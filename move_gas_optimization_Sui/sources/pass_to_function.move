module move_gas_optimization::pass_to_function {
    public struct MyObject has key, store {
        id: UID,
        a:u128,
        b:u128,
        c:u128,
        d:u128,
        vec: vector<u64>,
        w:u8,
        x:u8,
        y:u8,
        z:u8
    }

    public entry fun create_object(ctx: &mut TxContext) {
        let mut vec = vector::empty<u64>();
        let mut k:u64 = 0;
        while (k < 100) {
            vector::push_back(&mut vec, k);
            k = k + 1;
        };

        let object = MyObject {
                id: object::new(ctx),                
                a:1000,
                b:1000,
                c:1000,
                d:1000,
                vec: vec,
                w:10,
                x:10,
                y:10,
                z:10
            };

        transfer::transfer(object, tx_context::sender(ctx));
    }
    
    public entry fun pass_by_reference(object: &MyObject, new_value: u8) {
        //object.x = new_value;   // won't allow change - reference is not explicitely mutable
    }

    public entry fun pass_by_mut_reference(object: &mut MyObject, new_value: u8) {
        object.x = new_value;
    }

    public entry fun pass_by_value(object: MyObject, new_value: u8) {
        //object.x = new_value;     // won't allow change - reference is not explicitely mutable
    }
}

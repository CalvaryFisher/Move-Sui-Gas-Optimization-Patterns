module move_gas_optimization::BM_small_object_operation_tests{
    // Small object
    public struct Test_Obj has key{
        id: UID,
        value: u64
    }

    // Creates many objects
    entry fun create_many_objects(ctx: &mut TxContext){
        let mut i: u64 = 0;
        
        let mut test_object = Test_Obj{
                id: object::new(ctx),
                value: 0
        };
        transfer::transfer(test_object, tx_context::sender(ctx));

        while (i < 2000){
            test_object = Test_Obj{
                id: object::new(ctx),
                value: 0
            };
            transfer::transfer(test_object, tx_context::sender(ctx));
            i = i + 1;
        }
    }

    // Create 1 object
    entry fun create_object(ctx: &mut TxContext){
        let mut test_object = Test_Obj{
                id: object::new(ctx),
                value: 0
        };
        transfer::transfer(test_object, tx_context::sender(ctx));
    }

    // Repeatedly access given object
    entry fun access_object(object: &mut Test_Obj){
        let mut i: u64 = 0;
        let mut read_value: u64 = object.value;
        i = i + 1;

        while (i < 10000){
            read_value = object.value;
            i = i + 1;
        }
    }
    
    // Repeatedly update given object
    entry fun update_object(object: &mut Test_Obj){
        let mut i: u64 = 0;
        object.value = object.value + 1;
        i = i + 1;

        while (i < 10000){
            object.value = object.value + 1;
            i = i + 1;
        }
    }
}

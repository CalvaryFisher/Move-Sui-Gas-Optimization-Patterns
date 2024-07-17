module move_gas_optimization::BL_tests_on_ownership{
    use sui::bag;

    public struct MyObject has key, store{
        id: UID,
        value: u64
    }
    
    public entry fun create_object(ctx: &mut TxContext){
        let object = MyObject{
            id: object::new(ctx),
            value: 0
        };

        transfer::transfer(object, tx_context::sender(ctx));    //without transfer statement, code will not compile
    }

    public entry fun create_object_transfer_to_address(addr: address, ctx: &mut TxContext){
        let object = MyObject{
            id: object::new(ctx),
            value: 0
        };

        transfer::transfer(object, addr);
    }

    public entry fun create_bag(ctx: &mut TxContext){
        let bag_object = bag::new(ctx);

        sui::transfer::public_transfer(bag_object, tx_context::sender(ctx));
        //transfer::transfer(bag_object, tx_context::sender(ctx));  //Since Bag is from a different module, cannot use the regular transfer function
    }

    public entry fun attach_obj_to_bag(object: MyObject, bag_obj_ref: &mut bag::Bag){
        bag::add(bag_obj_ref, 0, object);
    }

    public entry fun remove_obj_from_bag(bag_obj_ref: &mut bag::Bag, ctx: &mut TxContext){
        let object: MyObject = bag::remove(bag_obj_ref, 0);
        transfer::transfer(object, tx_context::sender(ctx));
    }   
}

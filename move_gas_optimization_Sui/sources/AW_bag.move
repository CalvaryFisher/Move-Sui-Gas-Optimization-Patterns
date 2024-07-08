module move_gas_optimization::AW_bag{
    use sui::bag;

    // Makes new bag (type declaration not required)
    entry fun make_new_bag(ctx: &mut TxContext){
        let bag_object = bag::new(ctx);
        //sui::transfer::transfer(table_object, tx_context::sender(ctx));    //will not compile with this line
        sui::transfer::public_transfer(bag_object, tx_context::sender(ctx));
    }
    
    // Adds elements to given bag
    // Uses key 0-N, value 1-N+1 where N = length
    entry fun add_nums_to_bag(bag_object: &mut bag::Bag){
        let mut i: u64 = 0;
        while(i < 10){
            bag::add(bag_object, i, i+1);
            i = i + 1;
        }
    }

    // Adds a single element to given table
    entry fun add_num_to_bag(bag_object: &mut bag::Bag, num: u64){
        let curr_length:u64 = bag::length(bag_object);
        bag::add(bag_object, curr_length, num); //adds given number into table, with current length as key
    }
}

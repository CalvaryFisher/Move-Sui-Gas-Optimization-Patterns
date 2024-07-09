module move_gas_optimization::AW_bag{
    use sui::bag;

    // Makes new bag (type declaration not required)
    entry fun make_new_bag(ctx: &mut TxContext){
        let bag_object = bag::new(ctx);
        sui::transfer::public_transfer(bag_object, tx_context::sender(ctx));
    }
    
    // Adds elements to given bag
    // Uses key 0-N, value 1-N+1 where N = length
    entry fun add_nums_to_bag(bag_object: &mut bag::Bag){
        let mut i: u64 = 0;
        while(i < 10000){
            bag::add(bag_object, i, i+1);
            i = i + 1;
        }
    }

    // Adds a single element to given bag
    entry fun add_num_to_bag(bag_object: &mut bag::Bag, num: u64){
        let curr_length:u64 = bag::length(bag_object);
        bag::add(bag_object, curr_length, num); //adds given number into bag, with current length as key
    }

    // uses borrow (immutable) to access values of collection
    entry fun access_immut_bag(bag_object: &mut bag::Bag){
        
        let mut i: u64 = 0;
        let mut curr_num: &u64 = bag::borrow(bag_object, i);
        i = i + 1;
        while(i < 1000){
            curr_num = bag::borrow(bag_object, i);
            i = i + 1;
        }
    }

    // borrow mut
    // uses borrow (mutable) to access values of collection
    entry fun access_mut_bag(bag_object: &mut bag::Bag){
        
        let mut i: u64 = 0;
        let mut curr_num: &mut u64 = bag::borrow_mut(bag_object, i);
        i = i + 1;
        while(i < 1000){
            curr_num = bag::borrow_mut(bag_object, i);
            i = i + 1;
        }
    }

    // borrow mut & update
    entry fun update_bag(bag_object: &mut bag::Bag){
        
        let mut i: u64 = 0;
        let mut curr_num: &mut u64 = bag::borrow_mut(bag_object, i);
        *curr_num = *curr_num + 2000;   //large number used to better check change within collection object
        i = i + 1;
        while(i < 1000){
            curr_num = bag::borrow_mut(bag_object, i);
            *curr_num = *curr_num + 2000;
            i = i + 1;
        }
    }
}

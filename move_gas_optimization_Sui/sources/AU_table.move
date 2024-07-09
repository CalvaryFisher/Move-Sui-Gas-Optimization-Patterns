module move_gas_optimization::AU_table{
    use sui::table;

    // Makes new u64, u64 table
    entry fun make_new_table_u64_u64(ctx: &mut TxContext){
        let table_object = table::new<u64, u64>(ctx);
        //sui::transfer::transfer(table_object, tx_context::sender(ctx));    //will not compile with this line
        sui::transfer::public_transfer(table_object, tx_context::sender(ctx));
    }

    // Adds elements to given table. 
    // Uses key 0-N, value 1-N+1 where N = length
    entry fun add_nums_to_table(table_object: &mut table::Table<u64, u64>){
        let mut i: u64 = 0;
        while(i < 1000){
            table::add(table_object, i, i+1);
            i = i + 1;
        }
    }

    // Adds a single element to given table
    entry fun add_num_to_table(table_object: &mut table::Table<u64, u64>, num: u64){
        let length:u64 = table::length(table_object);
        table::add(table_object, length, num); //adds given number into table, with current length as key
    }

    // uses borrow (immutable) to access values of collection
    entry fun access_immut_table(table_object: &mut table::Table<u64, u64>){
        
        let mut i: u64 = 0;
        let mut curr_num = table::borrow(table_object, i);
        i = i + 1;
        while(i < 1000){
            curr_num = table::borrow(table_object, i);
            i = i + 1;
        }
    }

    // borrow mut
    // uses borrow (mutable) to access values of collection
    entry fun access_mut_table(table_object: &mut table::Table<u64, u64>){
        
        let mut i: u64 = 0;
        let mut curr_num = table::borrow_mut(table_object, i);
        i = i + 1;
        while(i < 1000){
            curr_num = table::borrow_mut(table_object, i);
            i = i + 1;
        }
    }

    // borrow mut & update
    entry fun update_table(table_object: &mut table::Table<u64, u64>){
        
        let mut i: u64 = 0;
        let mut curr_num = table::borrow_mut(table_object, i);
        *curr_num = *curr_num + 2000;   //large number used to better check change within collection object
        i = i + 1;
        while(i < 1000){
            curr_num = table::borrow_mut(table_object, i);
            *curr_num = *curr_num + 2000;
            i = i + 1;
        }
    }

    // remove

    // length

    // is_empty

    // contains

    // contains_with_type (bag only)

    // destroy_empty

    // drop (table only)
}

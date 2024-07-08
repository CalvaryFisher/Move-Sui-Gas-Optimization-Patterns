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
        while(i < 10){
            table::add(table_object, i, i+1);
            i = i + 1;
        }
    }

    // Adds a single element to given table
    entry fun add_num_to_table(table_object: &mut table::Table<u64, u64>, num: u64){
        let curr_length:u64 = table::length(table_object);
        table::add(table_object, curr_length, num); //adds given number into table, with current length as key
    }
}

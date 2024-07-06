module move_gas_optimization::AU_table_and_bag{
    use sui::table;
    entry fun make_new_table(ctx: &mut TxContext){
        let table_object = table::new<u256, u256>(ctx);
        //sui::transfer::transfer(table_object, tx_context::sender(ctx));    //will not compile with this line
        sui::transfer::public_transfer(table_object, tx_context::sender(ctx));
    }

    entry fun add_nums(table_object: &mut table::Table<u256, u256>){
        let mut i: u256 = 0;
        while(i < 10){
            table::add(table_object, i, i+1);
            i = i + 1;
        }
    }
}

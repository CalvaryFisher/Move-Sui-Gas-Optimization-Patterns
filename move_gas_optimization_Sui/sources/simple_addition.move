module move_gas_optimization::simple_addition{
    /// Addition with u64 variable
    entry fun add_u128(){
        let mut i:u64 = 0;
        let mut num1:u128 = 4;
        let mut num2:u128;
        while(i < 10000){
            num2 = num1 + 4;
            i = i + 1;
        }
    }
}

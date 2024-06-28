module move_gas_optimization::simple_addition{
    /// Aptos code: Addition with u128 variable
    entry fun add_u128(){
        let i:u64 = 0;
        let num1:u128 = 4;
        let num2:u128;
        while(i < 10000){
           num2 = num1 + 4;
            i = i + 1;
        }
    }
}

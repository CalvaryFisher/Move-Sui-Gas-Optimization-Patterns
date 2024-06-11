module move_gas_optimization::AF_num_values_func_returns{
    /// Move functions can return no 1 value, or more.
    /// We use these functions below to compare by having them each
    /// call a helper function returning the appropriate number of values.

    /// Function performing arithmetic and returning 1 value
    fun helper_returns_one(num:u64): u64{
        let plus_1:u64 = num + 1;
        let plus_2:u64 = num + 2;
        plus_1  //plus_1 returned
    }

    /// Calls a function to run arithmetic & return 1 value
    entry fun fun_return_one(){
        let mut i:u64 = 0;
        let arg:u64 = 2;
        let mut result_1 = 0; 
        let mut result_2 = 0;

        while(i < 10000){
            i = i + 1;
            result_1 = helper_returns_one(arg);
            result_1 = 0;
            result_2 = 0;
        }
    }

    /// Function performing arithmetic and returning 2 values
    fun helper_returns_two(num:u64): (u64, u64){
        let plus_1:u64 = num + 1;
        let plus_2:u64 = num + 2;
        (plus_1, plus_2)  //plus_1 returned
    }

    /// Calls a function to run arithmetic & return 2 values
    entry fun fun_return_two(){
        let mut i:u64 = 0;
        let arg:u64 = 2;
        let mut result_1 = 0; 
        let mut result_2 = 0;

        while(i < 10000){
            i = i + 1;
            (result_1, result_2) = helper_returns_two(arg);
            result_1 = 0;
            result_2 = 0;
        }
    }
}

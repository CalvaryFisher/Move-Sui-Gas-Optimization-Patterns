module move_gas_optimization::AL_further_int_type_tests{
    /// Testing declaration, add/sub/mult/div on different size integers

    /// Control: Empty loop
    entry fun empty_loop(){
        let mut i : u64 = 0;
        while(i < 10000){
            i = i + 1;
        }
    }

    // repeated definition of u64 integer
    entry fun declare_u64(){
        let mut i : u64 = 0;
        while(i < 10000){
            let x: u64;
            i = i + 1;
        }
    }
    
    // repeated definition of u128 integer
    entry fun declare_u128(){
        let mut i : u64 = 0;
        while(i < 10000){
            let x: u128;
            i = i + 1;
        }
    }

    /// Addition with u64 variable
    entry fun add_u64(){
        let mut i:u64 = 0;
        let mut num1:u64 = 4;
        let mut num2:u64;
        while(i < 10000){
            num2 = num1 + 4;
            i = i + 1;
        }
    }

    /// Addition with u128 variable
    entry fun add_u128(){
        let mut i:u64 = 0;
        let mut num1:u128 = 4;
        let mut num2:u128;
        while(i < 10000){
           num2 = num1 + 4;
            i = i + 1;
        }
    }

    /// Subtraction with u64 variable
    entry fun sub_u64(){
        let mut i:u64 = 0;
        let mut num1:u64 = 4;
        let mut num2:u64;
        while(i < 10000){
            num2 = num1 - 4;
            i = i + 1;
        }
    }

    /// Subtraction with u128 variable
    entry fun sub_u128(){
        let mut i:u64 = 0;
        let mut num1:u128 = 4;
        let mut num2:u128;
        while(i < 10000){
           num2 = num1 - 4;
            i = i + 1;
        }
    }

    /// Multiplication with u64 variable
    entry fun multiply_u64(){
        let mut i:u64 = 0;
        let mut num1:u64 = 4;
        let mut num2:u64;
        while(i < 10000){
            num2 = num1 * 4;
            i = i + 1;
        }
    }

    /// Multiplication with u128 variable
    entry fun multiply_u128(){
        let mut i:u64 = 0;
        let mut num1:u128 = 4;
        let mut num2:u128;
        while(i < 10000){
           num2 = num1 * 4;
            i = i + 1;
        }
    }

    /// Division with u64 variable
    entry fun divide_u64(){
        let mut i:u64 = 0;
        let mut num1:u64 = 4;
        let mut num2:u64;
        while(i < 10000){
            num2 = num1 / 4;
            i = i + 1;
        }
    }

    /// Division with u128 variable
    entry fun divide_u128(){
        let mut i:u64 = 0;
        let mut num1:u128 = 4;
        let mut num2:u128;
        while(i < 10000){
            num2 = num1 / 4;
            i = i + 1;
        }
    }
}

module move_gas_optimization::AN_further_int_declaration{
    /// Further tests on integer declaration

    /// Control: Empty loop
    entry fun empty_loop(){
        let mut i : u64 = 0;
        while(i < 10000){
            i = i + 1;
        }
    }

    /// Function repeatedly defines u64 integer
    /// Addition performed so compiler doesn't ignore declared variable
    entry fun declare_add_u64(){
        let mut i : u64 = 0;
        while(i < 10000){
            let mut num1:u64 = 1;
            num1 = num1 + 2;
            i = i + 1;
        }
    }
    
    /// Function repeatedly defines u128 integer
    /// Addition performed so compiler doesn't ignore declared variable
    entry fun declare_add_u128(){
        let mut i : u64 = 0;
        while(i < 10000){
            let mut num1:u128 = 1;
            num1 = num1 + 2;
            i = i + 1;
        }
    }

    /// Addition with u64 variable
    /// Note that declaration occurs outside of the loop
    entry fun add_u64(){
        let mut i:u64 = 0;
        let mut num1:u64 = 1;
        while(i < 10000){
            num1 = num1 + 2;
            i = i + 1;
        }
    }

    /// Addition with u128 variable
    /// Note that declaration occurs outside of the loop
    entry fun add_u128(){
        let mut i:u64 = 0;
        let mut num1:u128 = 1;
        while(i < 10000){
            num1 = num1 + 2;
            i = i + 1;
        }
    }

    /// Control: Empty loop with many iterations
    /// Deprecated usage, can refer to previous tests
    entry fun many_empty_loop(){
        let mut i : u64 = 0;
        while(i < 100000){
            i = i + 1;
        }
    }

    /// Addition with u64 variable
    /// Utilizes a different style (two variables, no variable grows over time.)
    entry fun more_complex_add_u64(){
        let mut i:u64 = 0;
        let mut num1:u64 = 4;
        let mut num2:u64;
        while(i < 10000){
            num2 = num1 + 4;
            i = i + 1;
        }
    }

    /// Addition with u128 variable    
    /// Utilizes a different style (two variables, no variable grows over time.)
    entry fun more_complex_add_u128(){
        let mut i:u64 = 0;
        let mut num1:u128 = 4;
        let mut num2:u128;
        while(i < 10000){
           num2 = num1 + 4;
            i = i + 1;
        }
    }

    /// Function repeatedly defines u64 integer
    /// Addition performed so compiler doesn't ignore declared variable
    /// Employs alternate style of repeated addition
    entry fun more_complex_declare_add_u64(){
        let mut i : u64 = 0;
        while(i < 10000){
            let mut num1:u64 = 4;
            let mut num2:u64;
            num2 = num1 + 4;
            i = i + 1;
        }
    }
    
    /// Function repeatedly defines u128 integer
    /// Addition performed so compiler doesn't ignore declared variable
    /// Employs alternate style of repeated addition
    entry fun more_complex_declare_add_u128(){
        let mut i : u64 = 0;
        while(i < 10000){
            let mut num1:u128 = 4;
            let mut num2:u128;
            num2 = num1 + 4;
            i = i + 1;
        }
    }
}

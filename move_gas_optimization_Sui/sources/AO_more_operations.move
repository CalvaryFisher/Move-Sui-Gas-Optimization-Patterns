module move_gas_optimization::AO_more_operations{
    
    /// Simple functions for comparison:*******************
    /// Empty loop
    entry fun empty_loop(){
        let mut i : u64 = 0;
        while(i < 100000){
            i = i + 1;
        }
    }

    // repeated assignment of u256 integer
    entry fun assign_u256(){
        let mut i : u64 = 0;
        let mut num1:u256 = 4;
        let mut num2:u256 = 0;
        while(i < 100000){
            num2 = num1;
            i = i + 1;
        }
    }

    /// Addition with u256 variable
    entry fun add_u256(){
        let mut i:u64 = 0;
        let mut num1:u256 = 4;
        let mut num2:u256 = 0;
        while(i < 100000){
            num2 = num1 + 4;
            i = i + 1;
        }
    }

    /// Functions we focus testing on:*******************
    entry fun modulo_u256(){
        let mut i:u64 = 0;
        let mut num1:u256 = 4;
        let mut num2:u256 = 0;
        while(i < 100000){
           num2 = num1 % 4;
            i = i + 1;
        }
    }
    
    entry fun left_shift_u256(){
        let mut i:u64 = 0;

        let mut bits_to_shift:u8 = 1;   // must be in u8
        let mut num1:u256 = 4;
        let mut num2:u256 = 0;
        while(i < 100000){
           num2 = num1 << bits_to_shift;
            i = i + 1;
        }
    }

    entry fun right_shift_u256(){
        let mut i:u64 = 0;
        
        let mut bits_to_shift:u8 = 1;   // must be in u8
        let mut num1:u256 = 4;
        let mut num2:u256 = 0;
        while(i < 100000){
           num2 = num1 >> bits_to_shift;    //number of bits to shift always goes on the right side of shifting operator.
            i = i + 1;
        }
    }

    entry fun bitwise_and_u256(){
        let mut i:u64 = 0;
        
        let mut num1:u256 = 1;
        let mut num2:u256 = 0;
        while(i < 100000){
           num2 = num1 & num2;
            i = i + 1;
        }
    }

    entry fun bitwise_or_u256(){
        let mut i:u64 = 0;
        
        let mut num1:u256 = 1;
        let mut num2:u256 = 0;
        while(i < 100000){
           num2 = num1 | num2;
            i = i + 1;
        }
    }

    entry fun bitwise_xor_u256(){
        let mut i:u64 = 0;
        
        let mut num1:u256 = 1;
        let mut num2:u256 = 0;
        while(i < 100000){
           num2 = num1 ^ num2;
            i = i + 1;
        }
    }

    entry fun greater_than_u256(){
        let mut i:u64 = 0;
        
        let mut test_bool:bool;
        let mut num1:u256 = 4;
        let mut num2:u256 = 0;
        while(i < 100000){
            test_bool = num1 > num2;
            i = i + 1;
        }
    }

    entry fun less_than_u256(){
        let mut i:u64 = 0;
        
        let mut test_bool:bool;
        let mut num1:u256 = 4;
        let mut num2:u256 = 0;
        while(i < 100000){
            test_bool = num1 < num2;
            i = i + 1;
        }
    }

    entry fun greater_than_or_equal_u256(){
        let mut i:u64 = 0;
        
        let mut test_bool:bool;
        let mut num1:u256 = 4;
        let mut num2:u256 = 0;
        while(i < 100000){
            test_bool = num1 >= num2;
            i = i + 1;
        }
    }

    entry fun less_than_or_equal_u256(){
        let mut i:u64 = 0;
        
        let mut test_bool:bool;
        let mut num1:u256 = 4;
        let mut num2:u256 = 0;
        while(i < 100000){
            test_bool = num1 <= num2;
            i = i + 1;
        }
    }

    entry fun equal_u256(){
        let mut i:u64 = 0;
        
        let mut test_bool:bool;
        let mut num1:u256 = 4;
        let mut num2:u256 = 0;
        while(i < 100000){
            test_bool = num1 == num2;
            i = i + 1;
        }
    }

    entry fun not_equal_u256(){
        let mut i:u64 = 0;
        
        let mut test_bool:bool;
        let mut num1:u256 = 4;
        let mut num2:u256 = 0;
        while(i < 100000){
            test_bool = num1 != num2;
            i = i + 1;
        }
    }

    entry fun boolean_and(){
        let mut i:u64 = 0;
        
        let mut bool1:bool = false;
        let mut bool2:bool = true;
        while(i < 100000){
            bool1 = bool2 && bool1;
            i = i + 1;
        }
    }

    entry fun boolean_or(){
        let mut i:u64 = 0;
        
        let mut bool1:bool = false;
        let mut bool2:bool = true;
        while(i < 100000){
            bool2 = bool1 || bool2;
            i = i + 1;
        }
    }

    entry fun boolean_not(){
        let mut i:u64 = 0;
        
        let mut bool1:bool = false;
        let mut bool2:bool = true;
        while(i < 100000){
            bool1 = !bool1;
            i = i + 1;
        }
    }

    /// Testing if we can set a boolean variable to an integer:
    /*
    entry fun int_bool_tests(){
        // Illegal:
        //let test_int:u64 = 0 == 0;
        //let test_int2:u64 = 1 != 1;
    }
    */
}

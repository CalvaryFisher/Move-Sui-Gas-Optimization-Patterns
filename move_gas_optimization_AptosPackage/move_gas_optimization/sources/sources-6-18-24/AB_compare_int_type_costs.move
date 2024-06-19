module move_gas_optimization::AB_compare_int_type_costs{
    /// "Move supports unsigned integers of various sizes: from 8-bit to 256-bit."
    /// Source: The Move Book
    /// In this program, I test if gas cost differs between 8-bit or 256-bit unsigned integers
    /// (Since these are the smallest & largest bit-size integers available, 
    /// I hypothesize that the most significant differences will appear between these two, if at all.)
    /// Please note that there are many different operations to test, these tests scratch the surface.

    /// Declaration of variables:
    /// Declaration of a u8 variable
    /// (declared without assigning a value)
    entry fun declare_u8(){
        let i:u64 = 0;
        while(i < 10000){
            let _test_u8:u8;
            
            i = i + 1;
        }
    }

    // Declaration of a u256 variable
    entry fun declare_u256(){
        let i:u64 = 0;
        while(i < 10000){
            let _test_256:u256;
            
            i = i + 1;
        }
    }

    /// Assignment of values to a variable:
    /// (Note that both u8 and u256 tests are set to the same number
    /// u256 carries larger number which may require more gas to process.
    /// More testing is needed to examine this.)

    /// Assignment of a u8 variable to a value
    entry fun assign_u8(){
        let i:u64 = 0;
        let _test_u8:u8 = 0;
        while(i < 10000){
            _test_u8 = 2;
            
            i = i + 1;
        };
    }

    /// Assignment to a u256 variable to a value
    entry fun assign_u256(){
        let i:u64 = 0;
        let _test_256 = 0;
        while(i < 10000){
            _test_256 = 2;
            
            i = i + 1;
        };
    }

    /// Addition of variables:
    /// Addition with u8 variable
    entry fun add_u8(){
        let i:u64 = 0;
        let num1:u8 = 1;
        while(i < 10000){
            num1 = num1 + 2;
            i = i + 1;
        }
    }

    /// Addition with u16 variable
    entry fun add_u16(){
        let i:u64 = 0;
        let num1:u16 = 1;
        while(i < 10000){
            num1 = num1 + 2;
            i = i + 1;
        }
    }

    /// Addition with u32 variable
    entry fun add_u32(){
        let i:u64 = 0;
        let num1:u32 = 1;
        while(i < 10000){
            num1 = num1 + 2;
            i = i + 1;
        }
    }

    /// Addition with u64 variable
    entry fun add_u64(){
        let i:u64 = 0;
        let num1:u64 = 1;
        while(i < 10000){
            num1 = num1 + 2;
            i = i + 1;
        }
    }

    /// Addition with u128 variable
    entry fun add_u128(){
        let i:u64 = 0;
        let num1:u128 = 1;
        while(i < 10000){
            num1 = num1 + 2;
            i = i + 1;
        }
    }

    /// Addition with u256 variable
    entry fun add_256(){
        let i:u64 = 0;
        let num1:u256 = 1;
        while(i < 10000){
            num1 = num1 + 2;
            i = i + 1;
        }
    }

    /// Multiplication with u8 variable
    entry fun multiply_u8(){
        let i:u64 = 0;
        let num1:u8 = 1;
        while(i < 10000){
            if(num1 >= 127){    // on next x2 will exceed max size u8 can carry
                num1 = 1;       // reset
            };                  // reset value kept constant across different size integers -> consistency in testing
            num1 = num1 * 2;
            i = i + 1;
        }
    }

    /// Multiplication with u16 variable
    entry fun multiply_u16(){
        let i:u64 = 0;
        let num1:u16 = 1;
        while(i < 10000){
            if(num1 >= 127){    // on next x2 will exceed max size u8 can carry
                num1 = 1;       // reset
            };                  // reset value kept constant across different size integers -> consistency in testing
            num1 = num1 * 2;
            i = i + 1;
        }
    }

    /// Multiplication with u32 variable
    entry fun multiply_u32(){
        let i:u64 = 0;
        let num1:u32 = 1;
        while(i < 10000){
            if(num1 >= 127){    // on next x2 will exceed max size u8 can carry
                num1 = 1;       // reset
            };                  // reset value kept constant across different size integers -> consistency in testing
            num1 = num1 * 2;
            i = i + 1;
        }
    }

    /// Multiplication with u64 variable
    entry fun multiply_u64(){
        let i:u64 = 0;
        let num1:u64 = 1;
        while(i < 10000){
            if(num1 >= 127){    // on next x2 will exceed max size u8 can carry
                num1 = 1;       // reset
            };                  // reset value kept constant across different size integers -> consistency in testing
            num1 = num1 * 2;
            i = i + 1;
        }
    }

    /// Multiplication with u64 variable
    entry fun multiply_u128(){
        let i:u64 = 0;
        let num1:u128 = 1;
        while(i < 10000){
            if(num1 >= 127){    // on next x2 will exceed max size u8 can carry
                num1 = 1;       // reset
            };                  // reset value kept constant across different size integers -> consistency in testing
            num1 = num1 * 2;
            i = i + 1;
        }
    }

    /// Multiplication with u256 variable
    entry fun multiply_u256(){
        let i:u64 = 0;
        let num1:u256 = 1;
        while(i < 10000){
            if(num1 >= 127){    // on next x2 will exceed max size u8 can carry
                num1 = 1;       // reset
            };                  // reset value kept constant across different size integers -> consistency in testing
            num1 = num1 * 2;
            i = i + 1;
        }
    }

    /// Subtraction of variables:
    /// Subtraction of two u8 variables
    entry fun sub_u8(){
        let i:u64 = 0;
        while(i < 10000){
            let _num1:u8 = 3;
            let _num2:u8 = 2;
            let _num3:u8 = _num1 - _num2;

            i = i + 1;
        }
    }

    /// Subtraction of two u256 variables
    entry fun sub_256(){
        let i:u64 = 0;
        while(i < 10000){
            let _num1:u256 = 3;
            let _num2:u256 = 2;
            let _num3:u256 = _num1 - _num2;

            i = i + 1;
        }
    }


}
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
        let mut i:u64 = 0;
        while(i < 1000){
            let test_u8:u8;
            
            i = i + 1;
        }
    }

    // Declaration of a u256 variable
    entry fun declare_u256(){
        let mut i:u64 = 0;
        while(i < 1000){
            let test_256:u256;
            
            i = i + 1;
        }
    }

    /// Assignment of values to a variable:
    /// (Note that both u8 and u256 tests are set to the same number
    /// u256 carries larger number which may require more gas to process.
    /// More testing is needed to examine this.)

    /// Assignment of a u8 variable to a value
    entry fun assign_u8(): u8{
        let mut i:u64 = 0;
        let mut test_u8:u8 = 0;
        while(i < 1000){
            test_u8 = 2;
            
            i = i + 1;
        };
        test_u8
    }

    /// Assignment to a u256 variable to a value
    entry fun assign_u256(): u256{
        let mut i:u64 = 0;
        let mut test_256 = 0;
        while(i < 1000){
            test_256 = 2;
            
            i = i + 1;
        };
        test_256
    }

    /// Addition of variables:
    /// Addition of two u8 variables
    entry fun add_u8(){
        let mut i:u64 = 0;
        while(i < 1000){
            let num1:u8 = 2;
            let num2:u8 = 3;
            let num3:u8 = num1 + num2;

            i = i + 1;
        }
    }

    /// Addition of two u256 variables
    entry fun add_256(){
        let mut i:u64 = 0;
        while(i < 1000){
            let num1:u256 = 2;
            let num2:u256 = 3;
            let num3:u256 = num1 + num2;

            i = i + 1;
        }
    }
}

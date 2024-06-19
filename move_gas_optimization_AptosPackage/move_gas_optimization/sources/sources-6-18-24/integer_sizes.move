module move_gas_optimization::integer_sizes{
    /// Code by Fernando L.
    /// Examining the gas cost differences between integer definitions in sizes ranging from
    /// u8, u16, u32, u64, u128, u256

    // repeated definition of u8 integer
    entry fun int_u8(){
        let i: u64 = 0;
        while(i < 100000){
            let _x: u8;

            i = i + 1;

        }
    }
    
    // repeated definition of u16 integer
    entry fun int_u16(){
        let i : u64 = 0;
        while(i < 100000){
            let _x: u16;
            i = i + 1;
        }
    }
    
    // repeated definition of u32 integer
    entry fun int_u32(){
        let i : u64 = 0;
        while(i < 100000){
            let _x: u32;
            i = i + 1;
        }
    }
    
    // repeated definition of u64 integer
    entry fun int_u64(){
        let i : u64 = 0;
        while(i < 100000){
            let _x: u64;
            i = i + 1;
        }
    }
    
    // repeated definition of u128 integer
    entry fun int_u128(){
        let i : u64 = 0;
        while(i < 100000){
            let _x: u128;
            i = i + 1;
        }
    }
    
    // repeated definition of u256 integer
    entry fun int_u256(){
        let i : u64 = 0;
        while(i < 100000){
            let _x: u256;
            i = i + 1;
        }
    }
    
}
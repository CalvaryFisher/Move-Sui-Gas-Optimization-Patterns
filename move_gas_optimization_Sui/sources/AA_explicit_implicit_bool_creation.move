module move_gas_optimization::AA_explicit_implicit_bool_creation{
    /// Within Move, variables may be assigned the bool type 
    /// implicitly or explicitly. These functions help 
    /// compare the gas price of each way to create a bool & assign a value to it.

    /// Declares a new variable,
    /// explicitly declares as boolean, and assigns a value
    entry fun explicitly_make_bool(){
        let mut i:u64 = 0;
        while(i < 10000){
            let test_bool:bool = true;
            
            i = i + 1;
        }
    }

    /// Declares a new variable,
    /// implicitly declares as boolean, and assigns a value
    entry fun implicitly_make_bool(){
        let mut i:u64 = 0;
        while(i < 10000){
            let test_bool = true;
            
            i = i + 1;
        }
    }
}

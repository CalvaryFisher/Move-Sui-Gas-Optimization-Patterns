module move_gas_optimization::AC_empty_block{
    /// Move allows developers to write expressions within a "block"
    /// marked with {<expression>};
    /// A block is similar to a function, having a seperate scope & ability to return values.
    
    /// For these functions, we test if there's a difference in gas
    /// based on:
    /// whether or not an *empty* block exists within the code.

    /// Checking for gas cost if a block is within code but is empty
    entry fun empty_block(){
        let mut i:u64 = 0;
        while(i < 1000){
            //Code block begins:
            {
                //compiler will automatically replace with an empty expression ()
            };
            //Code block ends
            i = i + 1;
        }
    }

    /// "Control Group" function
    /// We compare to the empty_block function
    /// no code run within.
    entry fun empty_no_code_block(){
        let mut i:u64 = 0;
        while(i < 1000){
            //no code block
            i = i + 1;
        }
    }
}

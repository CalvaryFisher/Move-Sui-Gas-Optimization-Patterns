module move_gas_optimization::AE_block_returning{
    /// Move allows developers to write expressions within a "block"
    /// marked with {<expression>};
    /// A block is similar to a function, having a seperate scope & ability to return values.
    
    /// For these functions, we test if there's a difference in gas
    /// based on whether or not:
    /// a block exists within the code, that block runs code & returns a value
    /// or, that same code is run without a code block

    /// Checking for gas cost if a block is within code and returns a value
    entry fun block_runs_code_and_returns(){
        let mut i:u64 = 0;
        while(i < 1000){
            let num:u64 = {
                2 + 2   // since no semicolon after the expression within block
                        // this value is returned.
            };
            i = i + 1;
        }
    }
    
    /// Checking for gas cost if there is no block within code
    entry fun no_block_returning(){
        let mut i:u64 = 0;
        while(i < 1000){
            let num:u64 = 2 + 2;    //expression is not done wtihin a block
            i = i + 1;
        }
    }
}

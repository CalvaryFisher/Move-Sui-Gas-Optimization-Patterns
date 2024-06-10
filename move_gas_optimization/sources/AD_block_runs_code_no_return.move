module move_gas_optimization::AD_block_runs_code_no_return{    
    /// Move allows developers to write expressions within a "block"
    /// marked with {<expression>};
    /// A block is similar to a function, having a seperate scope & ability to return values.
    
    /// For these functions, we test if there's a difference in gas
    /// based on whether or not:
    /// a block running code exists or that code is run without a block.
    
    /// Checking for gas cost if a block is within code and returns a value
    entry fun block_runs_code_no_return(){
        let mut i:u64 = 0;
        let mut k = 0;
        while(i < 1000){
            {
                k = k + 1;  // due to semicolon on last line: no return value
            };
            i = i + 1;
        }
    }

    /// Checking for gas cost if there is no block within code
    entry fun no_block_no_return(){
        let mut i:u64 = 0;
        let mut k = 0;
        while(i < 1000){
            k = k + 1;      //expression is not done wtihin a block
            i = i + 1;
        }
    }
}

module move_gas_optimization::test{
    entry fun test_fun(){
        //used as a Control to check the 
        //minimum cost to run an Aptos entry function is
    }

    entry fun test_loop(){
        let i : u64 = 0;
        while(i < 10000){
            i = i + 1;
        }
    }
}
module move_gas_optimization::AV_vector_element_update{
    use std::vector;

    public entry fun pushback_only(){
        //1) Create vector
        //1A) Create empty vector
        let vec1 = vector::empty<u64>();

        //1B) Push back to fill vector
        let k:u64 = 0;
        while (k < 10000){
            vector::push_back(&mut vec1, k);
            k = k + 1;
        };
    }

    public entry fun pushback_with_second_empty_loop(){
        //1) Create vector
        //1A) Create empty vector
        let vec1 = vector::empty<u64>();

        //1B) Push back to fill vector
        let k:u64 = 0;
        while (k < 10000){
            vector::push_back(&mut vec1, k);
            k = k + 1;
        };

        let i: u64 = 0;
        while(i < 10000){
            i = i + 1;
        }
    }

    public entry fun bad_vector_element_update(){
        //1) Create vector
        //1A) Create empty vector
        let vec1 = vector::empty<u64>();

        //1B) Push back to fill vector
        let k:u64 = 0;
        while (k < 10000){
            vector::push_back(&mut vec1, k);
            k = k + 1;
        };

        //2) Loop through, accessing & updating element of vector
        let i: u64 = 0;
        let curr_num = vector::borrow_mut(&mut vec1, 0);   //mutable reference to vector element
        while(i < 10000){
            *curr_num = *curr_num + 10; //repeatedly updating element within vector
            i = i + 1;
        }
    }

    public entry fun good_vector_element_update(){
        //1) Create and pushback to vector
        //1A) Create empty vector
        let vec1 = vector::empty<u64>();

        //1B) Push back to fill vectors
        let k:u64 = 0;
        while (k < 10000){
            vector::push_back(&mut vec1, k);
            k = k + 1;
        };

        //2) Set mutable reference to first vector element 
        let mut_ref = vector::borrow_mut(&mut vec1, 0);
        //3) Copy vector element value to a local variable
        let local_var: u64 = *mut_ref;  //Using "*" accesses value itself, not referencing vector
        
        //4) Perform operations on local variable
        let i: u64 = 0;
        while(i < 10000){
            local_var = local_var + 10;
            i = i + 1;
        };
        //5) Copy value of local variable into vector using mutable reference
        *mut_ref = local_var; // We now modify actual vector element itself
    }
}

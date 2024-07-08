module move_gas_optimization::AV_vector_element_update{
    
    public struct Vector_in_Struct has store, drop{
        vec1: vector<u64>,
    }
    
    public entry fun bad_vector_element_update(){
        //1) Create and pushback to vector in struct
        //1A) Create empty vector
        let mut vec1 = vector::empty<u64>();

        //1B) Push back to fill vector
        let mut k:u64 = 0;
        while (k < 10000){
            vector::push_back(&mut vec1, k);
            k = k + 1;
        };

        //1C) Create struct, setting its vector to match
        let mut item = Vector_in_Struct{
            vec1: vec1
        };

        //2) Loop through, accessing & updating element of vector
        let mut i: u64 = 0;
        let mut curr_num = vector::borrow_mut(&mut item.vec1, 0);   //mutable reference to vector element
        while(i < 100000){
            *curr_num = *curr_num + 10; //repeatedly updating element within vector
            i = i + 1;
        }

    }

    public entry fun good_vector_element_update(){
        //1) Create and pushback to vector in struct
        //1A) Create empty vector
        let mut vec1 = vector::empty<u64>();

        //1B) Push back to fill vectors
        let mut k:u64 = 0;
        while (k < 10000){
            vector::push_back(&mut vec1, k);
            k = k + 1;
        };

        //1C) Create struct, setting its vector to match
        let mut item = Vector_in_Struct{
            vec1: vec1
        };

        //2) Set mutable reference to first vector element 
        let mut mut_ref = vector::borrow_mut(&mut item.vec1, 0);
        //3) Copy vector element value to a local variable
        let mut local_var: u64 = *mut_ref;  //Using "*" accesses value itself, not referencing vector
        
        //4) Perform operations on local variable
        let mut i: u64 = 0;
        while(i < 100000){
            local_var = local_var + 10;
            i = i + 1;
        };
        //5) Copy value of local variable into vector using mutable reference
        *mut_ref = local_var;
    }
}

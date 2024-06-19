module move_gas_optimization::parallel_vectors_struct_operations{
    /// Comparing the gas usage of operations on:
    /// 3 parallel vectors 
    /// A vector of a struct with 3 fields
    /// A struct of 3 vectors
    // Number of times to iterate through loops:

    const NUM_ITERATIONS: u64 = 10000;
    
    use std::vector;

    // Error Number:
    const NOT_FOUND:u64 = 404;
    // Value to find:
    const KEY: u256 = 2;

    /// function creating and filling three parallel vectors with 10000 elements of type u256
    /// Function then runs addition operations on all parallel vectors
    entry fun parallel_vector_func_add(){
        let vec1 = std::vector::empty<u256>();
        let vec2 = std::vector::empty<u256>();
        let vec3 = std::vector::empty<u256>();
        let i: u64 = 0;

        while(i < NUM_ITERATIONS){
            std::vector::push_back(&mut vec1, 1);
            std::vector::push_back(&mut vec2, 1);
            std::vector::push_back(&mut vec3, 1);

            i = i + 1;
        };
        i = 0;  //reset i
        while(i < NUM_ITERATIONS){
            let vec1_reference = vector::borrow_mut(&mut vec1, i);
            let vec2_reference = vector::borrow_mut(&mut vec2, i);
            let vec3_reference = vector::borrow_mut(&mut vec3, i);
            //pulls references to vectors

            *vec1_reference = *vec1_reference + 2;
            *vec2_reference = *vec2_reference + 2;
            *vec3_reference = *vec3_reference + 2;
            i = i + 1;
        }
    }

    /// struct with three fields to compare to three parallel vectors
    struct Test_struct has drop{
        field1: u256,
        field2: u256,
        field3: u256
    }

    /// function creating and filling a vectors of struct with three fields, all fields of type u256
    entry fun struct_vector_func_addition(){
        let struct_vector: vector<Test_struct> = vector[];          //More like Move Sui

        let i: u64 = 0;

        // filling elements
        while (i < NUM_ITERATIONS){
            let test_object = Test_struct{field1: 1, field2: 1, field3: 1};
            
            //struct_vector.push_back(test_object);
            vector::push_back(&mut struct_vector, test_object);
            i = i + 1;
        };

        i = 0;
        let replacement = Test_struct{field1: 1, field2: 1, field3: 1}; //used to increase current values stored
        let num_to_add: u256 = 0;   //used to increase current stored value
        // update every item in the loop
        while(i < NUM_ITERATIONS){
            num_to_add = num_to_add + 2;
            replacement = Test_struct{field1: num_to_add, field2: num_to_add, field3: num_to_add}; //used to increase current value
            let struct_vector_reference = vector::borrow_mut(&mut struct_vector, i);    //accessing vector of struct at index i
            
            *struct_vector_reference = replacement;     // modifying that slot to hold different values
            i = i + 1;
        };
    }

    /// struct with three vectors to compare to three parallel vectors
    struct Struct_of_vectors has drop{
        field1: vector<u256>,
        field2: vector<u256>,
        field3: vector<u256>
    }
    /// function creating and filling an vectors of struct with three fields, all fields of type u256
    entry fun struct_of_vectors_func_add(){
        let test_object = Struct_of_vectors{
            field1: vector[], 
            field2: vector[], 
            field3: vector[]
        };
        let i: u64 = 0;

        //fill vectors:
        while (i < NUM_ITERATIONS){
            vector::push_back(&mut test_object.field1, 1);
            vector::push_back(&mut test_object.field2, 1);
            vector::push_back(&mut test_object.field3, 1);

            i = i + 1;
        };
        i = 0;
        //perform addition:
        while (i < NUM_ITERATIONS){
            let field1_reference = vector::borrow_mut(&mut test_object.field1, i);
            let field2_reference = vector::borrow_mut(&mut test_object.field2, i);
            let field3_reference = vector::borrow_mut(&mut test_object.field3, i);
            *field1_reference = *field1_reference + 2;
            *field2_reference = *field2_reference + 2;
            *field3_reference = *field3_reference + 2;

            i = i + 1;
        };
    }
    /// function creating and filling three parallel vectors with 10000 elements of type u256
    entry fun parallel_vector_func_search(){
        let vec1 = vector::empty<u256>();
        let vec2 = vector::empty<u256>();
        let vec3 = vector::empty<u256>();
        let i: u64 = 0;
        let found: bool = false;    //flag for if item found

        // Fill vector, place a different value within middle
        // (on average, a linear search will find item in the middle.)
        while(i < NUM_ITERATIONS){
            //Halway through vector, store key
            if(i == NUM_ITERATIONS / 2){
                vector::push_back(&mut vec1, KEY);
                vector::push_back(&mut vec2, KEY);
                vector::push_back(&mut vec3, KEY);
            }else{
                vector::push_back(&mut vec1, 1);
                vector::push_back(&mut vec2, 1);
                vector::push_back(&mut vec3, 1);
            };
            i = i + 1;
        };
        //Search through vector via index_of
        i = 0;
        let flag_found1: bool = false;
        let flag_found2: bool = false;
        let flag_found3: bool = false;
        let num: u256 = 0;
        /*
        flag_found1 = vector::index_of(&mut vec1, KEY);

        if(found == false){
            // if key never found, should return error
            // (otherwise, got inserted incorrectly.)
            abort NOT_FOUND
        }
        */
        
    }
}
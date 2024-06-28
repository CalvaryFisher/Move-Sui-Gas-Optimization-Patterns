module move_gas_optimization::AN_object_parallel_vectors {
    /// Testing different implementations for parallel vectors

    const NOT_FOUND: u64 = 404;

    public struct Parallel_Vectors has key, store{
        id: UID,
        vec1: vector<u64>,
        vec2: vector<u64>,
        vec3: vector<u64>
    }

    /// Function creates a Parallel_Vectors object, fills vectors and transfers to caller
    public entry fun create_Parallel_Vectors(ctx: &mut TxContext){
        // Create empty vectors
        let mut vec1 = vector::empty<u64>();
        let mut vec2 = vector::empty<u64>();
        let mut vec3 = vector::empty<u64>();

        let mut k:u64 = 0;
        while (k < 10000){
            vector::push_back(&mut vec1, k);
            vector::push_back(&mut vec2, k);
            vector::push_back(&mut vec3, k);
            k = k + 1;
        };

        let object = Parallel_Vectors {
            id: object::new(ctx),                
            vec1: vec1,
            vec2: vec2,
            vec3: vec3
        };
        transfer::transfer(object, tx_context::sender(ctx));
    }
    
    /// Adds +1 to every element of parallel vectors
    public entry fun parallel_vectors_add(object: &mut Parallel_Vectors){
        let length: u64 = vector::length(&object.vec1);
        let mut i: u64 = 0;
        while(i < length){
            //Updating vectors:
            let mut test_num = vector::borrow_mut(&mut object.vec1, i);     //grabbing mutable reference to vector element at i
            *test_num = *test_num + 1; 

            test_num = vector::borrow_mut(&mut object.vec2, i);     //grabbing mutable reference to vector element at i
            *test_num = *test_num + 1; 

            test_num = vector::borrow_mut(&mut object.vec3, i);     //grabbing mutable reference to vector element at i
            *test_num = *test_num + 1; 

            i = i + 1;
        }
    }

    /// Searches parallel vectors for given key
    /// We only search 1 of the 3 arrays, similar to a real-world situation.
    /// We run search on each element stored within the parallel vectors.
    public entry fun parallel_vectors_search(object: & Parallel_Vectors){        
        //1) Get Vector Length
        let length = vector::length(&object.vec1);
        //2A) Set key to loop through each available element
        let mut key:u64 = 0;
        while(key < length){
            // ( we run search on each element)
            //3) Search for current key
            let mut i: u64 = 0;
            while(i < length){
                //3A) Check if current element matches key
                let current_num = vector::borrow(& object.vec1, i);
                if(current_num == key){
                    //3Aa) If so, break out of search loop
                    break
                };
                //3B) Key not found, move forward
                i = i + 1;
            };
            //2B) Update key to next element
            key = key + 1;
        };
    }
    /// Searches parallel vectors
    /// We only search 1 of the 3 arrays, similar to a real-world situation.
    /// We run search through whole array, like if key was at end or missing.
    public entry fun parallel_vectors_search_mod(object: & Parallel_Vectors){        
        //1) Get Vector Length
        let length = vector::length(&object.vec1);
        let mut i: u64 = 0;
        //2) Loop through array
        while(i < length){
            //2A) Check if current element matches key
            let current_num = vector::borrow(& object.vec1, i);
            i = i + 1;
            if(current_num == length){
                //2Aa) If so, break out of search loop
                break
            };
            //2B) Key not found, move forward
            
        };
    }
    ///Testing an object with 1 vector of a struct with 3 fields:

    /// Struct goes inside object vector, holds 3 numbers
    public struct Three_Slot_Struct has store, drop{
        field1: u64,
        field2: u64,
        field3: u64
    }

    /// Object itself, has a vector of structs. Each struct has 3 slots
    public struct Vector_of_Struct has key, store{
        id: UID,
        vec: vector<Three_Slot_Struct>
    }

    /// Function creates a Vector_of_Struct object, fills vector and transfers to caller
    public entry fun create_Vector_of_Struct(ctx: &mut TxContext){
        //1) Create empty vector to store structs
        let mut temp_vector = vector::empty<Three_Slot_Struct>();

        //2) Loop through creating struct instances & storing in vector
        let mut i = 0;
        while(i < 10000){
            //2A) Create struct instance storing values of i
            let temp_struct = Three_Slot_Struct{
                field1: i,
                field2: i,
                field3: i
            };

            //2B) Store struct into vector
            vector::push_back(&mut temp_vector, temp_struct);

            i = i + 1;
        };

        //3) Create object with previously created vector of structs
        let object = Vector_of_Struct{
            id: object::new(ctx),
            vec: temp_vector
        };

        //4) Transfer object to transaction caller
        transfer::transfer(object, tx_context::sender(ctx));
    }

    /// Adds +1 to every element of Vector of Struct
    public entry fun vector_of_struct_add(object: &mut Vector_of_Struct){
        //1) Get length of vector
        let length: u64 = vector::length(&object.vec);
        //2) Loop through vector
        let mut i: u64 = 0;
        while(i < length){
            //2A) Access each item
            let struct_to_change = vector::borrow_mut(&mut object.vec, i);
            //2B) Update each item
            struct_to_change.field1 = struct_to_change.field1 + 1;
            struct_to_change.field2 = struct_to_change.field2 + 1;
            struct_to_change.field3 = struct_to_change.field3 + 1;

            i = i + 1;
        }
    }

    /// Searches Vector of Struct for given key
    /// We only search 1 of the 3 slots, similar to a real-world situation.
    /// We run search on each element stored within.
    public entry fun vector_of_struct_search(object: & Vector_of_Struct){        
        //1) Get Vector Length
        let length = vector::length(&object.vec);
        //2A) Set key to loop through each available element
        let mut key:u64 = 0;
        while(key < length){
            // ( we run search on each element)
            //3) Search for current key
            let mut i: u64 = 0;
            while(i < length){
                //3A) Check if current element matches key
                let struct_to_read = vector::borrow(& object.vec, i);
                if(struct_to_read.field1 == key){
                    //3Aa) If so, break out of search loop
                    break
                };
                //3B) Key not found, move forward
                i = i + 1;
            };
            //2B) Update key to next element
            key = key + 1;
        };
    }
}

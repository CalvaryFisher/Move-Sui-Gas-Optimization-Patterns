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
        while (k < 10000) {
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
    public entry fun parallel_vectors_search(object: & Parallel_Vectors, key: u64){        
        //1) Get vector length:
        let length = vector::length(&object.vec1);
        //2) Loop through each element
        let mut i: u64 = 0;
        while(i < length){
            //2A) Check if it matches key
            let current_num = vector::borrow(& object.vec1, i);
            if(*current_num == key){
                //2Aa) If so, break
                break
            };
            i = i + 1;
        };
        //Runs if item never found
        //abort NOT_FOUND
        //3) Where we would return index, if entry functions could.
        //return i
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
    public entry fun vector_of_struct_search(object: & Vector_of_Struct, key: u64){        
        //1) Get vector length:
        let length = vector::length(&object.vec);
        //2) Loop through vector
        let mut i: u64 = 0;
        while(i < length){
            //2A) Access struct at current index
            let struct_to_read = vector::borrow(& object.vec, i);
            //2B) Check if field1 matches key
            if(struct_to_read.field1 == key){
                //2Ba) If so, break
                break
            };
            i = i + 1;
        };
        //Runs if item never found
        //abort NOT_FOUND
        //3) Where we would return index, if entry functions could.
        //return i
    }
}

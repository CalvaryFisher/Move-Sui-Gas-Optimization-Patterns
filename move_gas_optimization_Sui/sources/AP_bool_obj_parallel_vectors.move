module move_gas_optimization::AP_bool_obj_parallel_vectors{
    public struct Parallel_Vectors has key, store{
        id: UID,
        vec1: vector<bool>,
        vec2: vector<bool>,
        vec3: vector<bool>
    }

    /// Function creates a Parallel_Vectors object, fills vectors and transfers to caller
    public entry fun create_Parallel_Vectors_bool(ctx: &mut TxContext){
        // Create empty vectors
        let mut vec1 = vector::empty<bool>();
        let mut vec2 = vector::empty<bool>();
        let mut vec3 = vector::empty<bool>();

        let mut k:u64 = 0;
        while (k < 10000){
            vector::push_back(&mut vec1, false);
            vector::push_back(&mut vec2, false);
            vector::push_back(&mut vec3, false);
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

    /// Performs boolean AND on all elements of parallel vectors.
    /// Note: currently not performing short circuit, every single time.
    public entry fun parallel_vectors_bool_and(object: &mut Parallel_Vectors){
        let length: u64 = vector::length(&object.vec1);
        let mut i: u64 = 0;
        while(i < length){
            //Updating vectors:
            let mut current_bool = vector::borrow_mut(&mut object.vec1, i);     //grabbing mutable reference to vector element at i
            *current_bool = true && *current_bool; 

            current_bool = vector::borrow_mut(&mut object.vec2, i);     //grabbing mutable reference to vector element at i
            *current_bool = true && *current_bool; 

            current_bool = vector::borrow_mut(&mut object.vec3, i);     //grabbing mutable reference to vector element at i
            *current_bool = true && *current_bool; 

            i = i + 1;
        }
    }

    /// Struct goes inside object vector, holds 3 values
    public struct Three_Slot_Struct has store, drop{
        field1: bool,
        field2: bool,
        field3: bool
    }

    /// Object itself, has a vector of structs. Each struct has 3 slots
    public struct Vector_of_Struct has key, store{
        id: UID,
        vec: vector<Three_Slot_Struct>
    }

    /// Function creates a Vector_of_Struct object, fills vector and transfers to caller
    public entry fun create_Vector_of_Struct_bool(ctx: &mut TxContext){
        //1) Create empty vector to store structs
        let mut temp_vector = vector::empty<Three_Slot_Struct>();

        //2) Loop through creating struct instances & storing in vector
        let mut i = 0;
        while(i < 10000){
            //2A) Create struct instance storing values of i
            let temp_struct = Three_Slot_Struct{
                field1: false,
                field2: false,
                field3: false
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

    /// Runs boolean-AND on every element of data structure
    /// Note: Does not use short-circuit design
    public entry fun vector_of_struct_bool_and(object: &mut Vector_of_Struct){
        //1) Get length of vector
        let length: u64 = vector::length(&object.vec);
        //2) Loop through vector
        let mut i: u64 = 0;
        while(i < length){
            //2A) Access each item
            let struct_to_change = vector::borrow_mut(&mut object.vec, i);
            //2B) Update each item
            struct_to_change.field1 = true && struct_to_change.field1;
            struct_to_change.field2 = true && struct_to_change.field2;
            struct_to_change.field3 = true && struct_to_change.field3;

            i = i + 1;
        }
    }

}

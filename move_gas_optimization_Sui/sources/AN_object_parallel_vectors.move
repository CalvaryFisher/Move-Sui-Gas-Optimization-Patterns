module move_gas_optimization::AN_object_parallel_vectors {
    /// Testing different implementations for parallel vectors

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
        while (k < 100) {
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
}
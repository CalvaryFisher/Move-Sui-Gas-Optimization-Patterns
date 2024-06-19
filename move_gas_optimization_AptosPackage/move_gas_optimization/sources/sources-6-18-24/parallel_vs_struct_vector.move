module move_gas_optimization::parallel_vs_struct_vectors{
    ///Comparing the gas usage of parallel vectors vs using a single vectors of struct 
    
    /// Number of times to iterate constant
    const NUM_ITERATIONS: u64 = 10000;
    
    /// function creating and filling three parallel vectors with 10000 elements of type u256
    entry fun parallel_vector_func(){
        let vec1 = std::vector::empty<u256>();
        let vec2 = std::vector::empty<u256>();
        let vec3 = std::vector::empty<u256>();
        let i: u64 = 0;

        while(i < NUM_ITERATIONS){
            std::vector::push_back(&mut vec1, 1);
            std::vector::push_back(&mut vec2, 1);
            std::vector::push_back(&mut vec3, 1);

            i = i + 1;
        }
    }

    
    /// struct with three fields to compare to three parallel vectors
    struct Test_struct has drop{
        field1: u256,
        field2: u256,
        field3: u256
    }

    /// function creating and filling an vectors of struct with three fields, all fields of type u256
    entry fun struct_vector_func(){
        let struct_vector: vector<Test_struct> = vector[];          //More like Move Sui
        //let struct_vector = std::vector::empty<Test_struct>();    //alternate way to declare a vector in Aptos Move

        let i: u64 = 0;

        while (i < NUM_ITERATIONS){
            let test_object = Test_struct{field1: 1, field2: 1, field3: 1};
            //struct_vector.push_back(test_object);
            std::vector::push_back(&mut struct_vector, test_object);

            i = i + 1;
        }
        //struct_vector.destroy_empty();
    }

    
    /// struct with three fields to compare to three parallel vectors
    struct Struct_of_vectors has drop{
        field1: vector<u256>,
        field2: vector<u256>,
        field3: vector<u256>
    }
    /// function creating and filling an vectors of struct with three fields, all fields of type u256
    entry fun struct_of_vectors_func(){
        let test_object = Struct_of_vectors{
            field1: vector[], 
            field2: vector[], 
            field3: vector[]
        };
        let i: u64 = 0;

        while (i < NUM_ITERATIONS){
            std::vector::push_back(&mut test_object.field1, 1);
            std::vector::push_back(&mut test_object.field2, 1);
            std::vector::push_back(&mut test_object.field3, 1);

            i = i + 1;
        }
    }
}
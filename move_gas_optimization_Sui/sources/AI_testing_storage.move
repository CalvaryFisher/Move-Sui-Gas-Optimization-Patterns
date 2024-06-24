module move_gas_optimization::AI_testing_storage{
/// struct with three fields to compare to three parallel vectors
    public struct Test_struct has drop, store{
        field1: u256,
        field2: u256,
        field3: u256
    }

    /// function creating and filling an vectors of struct with three fields, all fields of type u256
    entry fun struct_vector_func(){
        let mut struct_vector: vector<Test_struct> = vector[];
        let mut i: u64 = 0;

        while (i < 100000){
            let mut test_object = Test_struct{field1: 1, field2: 1, field3: 1};
            struct_vector.push_back(test_object);
            i = i + 1;
        }
        //struct_vector.destroy_empty();
    }

    /// function creating and filling an vectors of struct with three fields, all fields of type u256
    entry fun no_struct_vector(){
        let mut vector_of_256: vector<u256> = vector[];
        let mut i: u64 = 0;

        while (i < 100000){
            let mut test_num = 1;
            vector_of_256.push_back(test_num);
            i = i + 1;
        }
        //struct_vector.destroy_empty();
    }
}

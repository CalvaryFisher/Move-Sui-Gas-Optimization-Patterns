module move_gas_optimization::AG_visibility_modifiers{
    /// Move supports 3 main visibility modifiers:
    /// private: default, only callable by functions of the same module
    /// public: callable by other modules
    /// public(package): callable by other modules, but only those within the same package.

    /// Here, we test how the three different visibility modifiers affect gas usage
    /// using modified forms of a simple add +1 function

    fun helper_private(num:u64):u64 {   //private by default
        let plus_1:u64 = num + 1;
        plus_1
    }


    public entry fun call_private() {
        let mut i:u64 = 0;
        while (i < 1000) {
            let result:u64 = helper_private(2);
            i = i + 1;
        };
    }



    public fun helper_public(num:u64):u64 {
        let plus_1:u64 = num + 1;
        plus_1
    }


    public entry fun call_public() {
        let mut i:u64 = 0;
        while (i < 1000) {
            let result:u64 = helper_public(2);
            i = i + 1;
        };
    }



    public(package) fun helper_public_package(num:u64):u64 {
        let plus_1:u64 = num + 1;
        plus_1
    }

    public entry fun call_public_package() {
        let mut i:u64 = 0;
        while (i < 1000) {
            let result:u64 = helper_public_package(2);
            i = i + 1;
        };
    }

}

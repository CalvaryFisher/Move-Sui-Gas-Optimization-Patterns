module move_gas_optimization::AY_hero_with_bag_as_dynamic_object_field{
    use sui::dynamic_field;
    use sui::dynamic_object_field;
    use sui::bag;
    use sui::object_bag;

    // Set up Hero object structure
    public struct Hero has key, store{
        id: UID
    }

    // Set up individual accessories:
    public struct Sword has key, store{
        id: UID,
        strength: u64
    }

    public struct Shield has key, store{
        id: UID,
        strength: u64
    }

    public struct Hat has key, store{
        id: UID,
        strength: u64
    }

    // Create a single hero, create and add 3 accessories to a bag, add bag to hero as a dynamic field
    public entry fun create_hero_with_bag_in_dynamic_obj_field(ctx: &mut TxContext){
        let mut hero = Hero{id: object::new(ctx)};

        // creating bag
        let mut bag_object = bag::new(ctx);
        
        // creating hero attributes
        let mut sword = Sword{id: object::new(ctx), strength: 0};
        let mut shield = Shield{id: object::new(ctx), strength: 0};
        let mut hat = Hat{id: object::new(ctx), strength: 0};
        
        // adding hero attributes to bag
        bag::add(&mut bag_object, 0, sword);
        bag::add(&mut bag_object, 1, shield);
        bag::add(&mut bag_object, 2, hat);

        // adding bag as dynamic object field
        dynamic_object_field::add(&mut hero.id, b"bag", bag_object);

        transfer::transfer(hero, tx_context::sender(ctx));
    }
}

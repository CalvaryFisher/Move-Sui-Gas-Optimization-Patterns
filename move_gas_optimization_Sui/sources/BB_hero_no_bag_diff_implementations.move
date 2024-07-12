module move_gas_optimization::BB_hero_no_bag_diff_implementations{
    
    use sui::dynamic_field;
    use sui::dynamic_object_field;

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

    // Built from Fernando's code, used for comparison
    // Each iteration: Creates Hero, and adds 3 accessories as seperate dynamic fields
    public entry fun create_hero_no_bag_dynamic_fields(ctx: &mut TxContext){    
        let mut hero = Hero{id: object::new(ctx)};

        let mut sword = Sword{id: object::new(ctx), strength: 0};
        let mut shield = Shield{id: object::new(ctx), strength: 0};
        let mut hat = Hat{id: object::new(ctx), strength: 0};

        dynamic_field::add(&mut hero.id, b"sword", sword);
        dynamic_field::add(&mut hero.id, b"shield", shield);
        dynamic_field::add(&mut hero.id, b"hat", hat);

        transfer::transfer(hero, tx_context::sender(ctx));
    }

    // Built from Fernando's code, used for comparison
    // Iterates many times.
    // Each iteration: Creates Hero, and adds 3 accessories as seperate dynamic fields
    public entry fun create_heroes_no_bag_dynamic_fields(ctx: &mut TxContext){
        let mut i = 0;
        while (i < 125){
        
            let mut hero = Hero{id: object::new(ctx)};

            let mut sword = Sword{id: object::new(ctx), strength: 0};
            let mut shield = Shield{id: object::new(ctx), strength: 0};
            let mut hat = Hat{id: object::new(ctx), strength: 0};

            dynamic_field::add(&mut hero.id, b"sword", sword);
            dynamic_field::add(&mut hero.id, b"shield", shield);
            dynamic_field::add(&mut hero.id, b"hat", hat);

            transfer::transfer(hero, tx_context::sender(ctx));
            i = i + 1;
        }
    }

    public entry fun create_hero_no_bag_dynamic_object_fields(ctx: &mut TxContext){
        let mut hero = Hero{id: object::new(ctx)};

        let mut sword = Sword{id: object::new(ctx), strength: 0};
        let mut shield = Shield{id: object::new(ctx), strength: 0};
        let mut hat = Hat{id: object::new(ctx), strength: 0};

        dynamic_object_field::add(&mut hero.id, b"sword_object_field", sword);
        dynamic_object_field::add(&mut hero.id, b"shield_object_field", shield);
        dynamic_object_field::add(&mut hero.id, b"hat_object_field", hat);

        transfer::transfer(hero, tx_context::sender(ctx));
    }

    public entry fun create_heroes_no_bag_dynamic_object_fields(ctx: &mut TxContext){
        let mut i = 0;
        while(i < 125){
        
            let mut hero = Hero{id: object::new(ctx)};

            let mut sword = Sword{id: object::new(ctx), strength: 0};
            let mut shield = Shield{id: object::new(ctx), strength: 0};
            let mut hat = Hat{id: object::new(ctx), strength: 0};

            dynamic_object_field::add(&mut hero.id, b"sword_object_field", sword);
            dynamic_object_field::add(&mut hero.id, b"shield_object_field", shield);
            dynamic_object_field::add(&mut hero.id, b"hat_object_field", hat);

            transfer::transfer(hero, tx_context::sender(ctx));
            i = i + 1;
        }

    }
}

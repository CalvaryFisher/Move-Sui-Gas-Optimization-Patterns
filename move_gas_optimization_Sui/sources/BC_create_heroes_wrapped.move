module move_gas_optimization::BC_create_heroes_wrapped{
    public struct Hero has key, store{
        id: UID,
        sword: Sword,
        shield: Shield,
        hat: Hat
    }
    
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

    public entry fun create_heroes_no_bag_wrapped_direct(ctx: &mut TxContext){

        let mut i = 0;
        while(i < 125){
            let mut hero = Hero{
                id: object::new(ctx),
                sword: Sword{id: object::new(ctx), strength: 0},
                shield: Shield{id: object::new(ctx), strength: 0},
                hat: Hat{id: object::new(ctx), strength: 0}
            };

            transfer::transfer(hero, tx_context::sender(ctx));  // transferring
            i = i + 1;
        }
    }

    public entry fun create_single_wrappedHero(ctx: &mut TxContext){
        let mut hero = Hero{
            id: object::new(ctx),
            sword: Sword{id: object::new(ctx), strength: 0},
            shield: Shield{id: object::new(ctx), strength: 0},
            hat: Hat{id: object::new(ctx), strength: 0}
        };

        transfer::transfer(hero, tx_context::sender(ctx));
    }

    public entry fun update_wrapped_hero(hero: &mut Hero){
        let mut i = 0;
        //let mut test = 0u64;

        while(i < 10000){
            hero.sword.strength = hero.sword.strength + 1;
            
            i = i + 1;
        }
    }

}

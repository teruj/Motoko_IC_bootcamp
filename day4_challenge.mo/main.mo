import Food "custom";
import Animal "animal";
import List "mo:base/List";

actor {
    //challenge 1
    public func fun () : async Food {
        let beef : Food = {
            name = "beef" ;
            kinds = "meet" ;
            isFresh = false ;
        };

    };

    //challenge 4
    public func create_animal_then_takes_a_break( animal : Animal) : async  Animal {
        let aftBreakAnimal : Animal = Animal.animal_sleep(animal);
        return aftBreakAnimal;
    };

    //challenge 5
    // let animals : List.List<Animal> ;
    
    //challenge 6
    // public func push_animal (animal :Animal) : ?Animal{
    //     let aftBreakAnimal = List.push(animal,animals);
    // };

    // public func get_animals(): async [Animal] {

    //     return ;
    // };



};


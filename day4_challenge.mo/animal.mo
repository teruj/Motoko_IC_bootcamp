
//challenge 2

module {
    public type Animal = {
        species : Text ;
        energy : Nat ;
    };

//challenge 3

    public func animal_sleep(animal:Animal) : async Animal {
        // var aftAnimal : Animal = animal ;
        // aftAnimal.energy := aftAnimal.energy + 10 ;
        // return aftAnimal ;
        var aftAnimal : Animal = {
            species = animal.species ;
            energy = animal.energy + 10 ;
        };
        return aftAnimal ;
    };
};

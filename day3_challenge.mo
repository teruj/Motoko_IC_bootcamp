import Nat "mo:base/Nat";
import Array "mo:base/Array";

actor {

  //challenge 1
  private func swap (array:[var Nat], j:Nat, i:Nat) :  [var Nat] {
    var pre_j : Nat = array[j];
    array[j] := array[i];
    array[i] := pre_j ;
    return array ;
  };

  //challenge 2
  // public func init_count(n:Nat ) : async [Nat] {
    
  // };

  //challenge 3
  // public func seven ( array:[Nat]) : async Text {
  //     var sevenContain : Bool = (Array.find<Nat>(array ,func (value : Nat) :Bool {
  //       if (value == 7){
  //         return true;
  //       }else{
  //         return false ;
  //       };
  //     }));
  //     if (sevenContain){
  //       return "Seven is found" ;
  //     }else{
  //       return "Seven not found" ;
  //     };
  // };

  // //challenge 4
  public func nat_opt_to_nat (n: ?Nat, m: Nat): async ?Nat {
    if ( n == null){
      return ?m ;
      };
      return n ;
  };

  // }

  // //challenge 5
  public func day_of_the_week (n:Nat) : async ?Text {
    switch (n){
      case 1 ?"Monday";
      case 2 ?"Tuesday";
      case 3 ?"Wednesday";
      case 4 ?"Thursday";
      case 5 ?"Friday";
      case 6 ?"Saturday";
      case 7 ?"Sunday";
    };
  };

  // //challenge 6
  // public func populate_array ( :[?Nat]) : async [Nat] {

  // };

  // //challenge 7
  // public func sum_of_array ( : [Nat]) : async Nat {

  // };

  //challenge 8
   public func squared_array(array : [Nat]) : async [Nat] {
        return Array.map(array, func (num : Nat) : Nat {
            return num * num;
        });
    };


  // //challenge 9
  // public func increase_by_index ( :[Nat]) : async [Nat] {

  // };


  // //challenge 10
  // public func contains<A>( :[A], , ) : async Bool {

  // };

};

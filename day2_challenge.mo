import Nat8 "mo:base/Nat8";
import Nat "mo:base/Nat";
import Char "mo:base/Char";
import Prim "mo:prim";
import Text "mo:base/Text";


actor {

    //challenge 1
    public func nat_to_nat8( n: Nat) : async Nat8 {
        // if (n >= 256) ..... Error
        return( Nat8.fromNat(n) );
    };

    //challenge 2
    public func max_number_with_n_bits( n :Nat) :async Nat {
        var num : Nat = (2 ** n) -1 ;
        return num;
    };

    //challenge 3
    public func decimal_to_bits(n : Nat) : async Text {
        var text : Text = "";
        var num = n ;
        while ( num > 0 ){
            text := Nat.toText(num % 2)  # text ;
            num := num / 2 ;
        };
        return text ;
    };

    //challenge 4
    public func capitalize_character (c : Char) : async Char {
        // let capitalized : Char = Char.toUpper(c) ;
        let capitalized : Char = Prim.charToUpper(c) ;
        return (capitalized) ;
    };

    //challenge 5
    // public func capitalize_text (t: Text ) : async Text {
    //     let capitalized : Text = Prim.charToUpper(t) ;
    //     return capitalized ;
    // };

    //challenge 6
    public func is_inside (t:Text, c:Char) : async Bool {
        return Text.contains(t, #char c);
    };

    //challenge 7
    public func trim_whitespace(t:Text) : async Text {
        return Text.trim(t, #char ' ');
    };

    //challenge 8

    //challenge 9
    public func size_in_byted(t:Text) : async Nat {
        return Text.size(t);
    };

    //challenge 10

};

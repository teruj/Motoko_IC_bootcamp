import Principal "mo:base/Principal";
import HashMap "mo:base/HashMap";

//challenge 9

actor{

    stable var records :  ;


    //challenge 2
    let favoriteNumber = HashMap.HashMap<Principal, Nat>(0, Principal.equal, Principal.hash);

    //challenge 3
    public shared(msg) func add_favorite_number(n:Nat) {
        let principal_caller = msg.caller;
        favoriteNumber.put(principal_caller, n);
    };
    
    public shared(msg) func show_favorite_number(): async ?Nat {
        let principal_caller = msg.caller;
        let n = favoriteNumber.get(principal_caller);
        switch(n){
            case (null){
                return null;
                };
            case (_){
                return n;
                };
        };
    };


    system func preupgrade() {
        ;
    };

    system func postupgrade() {
        ;
    };



}
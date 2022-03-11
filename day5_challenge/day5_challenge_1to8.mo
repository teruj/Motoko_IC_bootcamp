import Principal "mo:base/Principal";
import HashMap "mo:base/HashMap";
import Cycles "mo:base/ExperimentalCycles";

actor{

    //challenge 1
    let anonymous_principal : Principal = Principal.fromText("2vxsx-fae");

    public shared(msg) func is_anonymous(): async Bool {
        let principal_caller = msg.caller ;
        return Principal.equal(principal_caller, anonymous_principal) ;
    };

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

    //challenge 6
    public func deposit_cycles(): async Nat {
        let received = Cycles.available();
        return received;
    };

}
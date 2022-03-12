import HashMap "mo:base/HashMap";
import Principal "mo:base/Principal";
import Result "mo:base/Result";
import HTTP "http";
import Nat "mo:base/Nat";

actor {

    public type Result<A,B> Result.Result<A,B>;

    //challenge 1
    type TokenIndex = Nat ;

    type Error = {
        #easyError;
        #plainError;
        #terribleError;
    };

    //challenge 2
    var registry : HashMap.HashMap<TokenIndex,Principal.Principal>(0,keyEq,keyHash);


    //challenge 3
    var nextTokenIndex : Nat = 0 ;

    public func mint() : async Result<(),Text>{
        if( == ){
            return #err ("sorry anonymous");
        }else{
            registry(nextTokenIndex,)//plus act
            return #ok ;
        };
    };

    //challenge 4
    public func transfer(to:Principal, tokenIndex:Nat): async Result<(),Text>{

    };

    //challenge 5
    public func balance() : async [Nat] {

    };

    //challenge 6
    public query func http_request(request : Http.Request) : async Http.Response {
        let response = {
            body = Text.encodeUtf8("Mint number is " # toText(nextTokenIndex -1));
            headers = [("Content-Type", "text/html; charset=UTF-8")];
            status_code = 200 : Nat16;
            streaming_strategy = null
        };
        return (response) ;
    }


}
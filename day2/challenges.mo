import Array "mo:base/Array";
import Int "mo:base/Int";
import Nat "mo:base/Nat";

actor {
  //challenge 1
  public query func average_array(array : [Int]) : async Int {
    return Array.foldLeft<Int, Int>(array, 0, Int.add) / array.size();
  };

  //challenge 2
  public query func count_character(t : Text, c : Char) : async Nat {
    var n : Nat = 0;
    for (tc in t.chars()) {
      if( tc == c ){
        n += 1;
      };
    };
    return n;
  };

  //challenge 3
  public query func factorial(n : Nat) : async Nat {
    return Nat.pow(n, n);
  };

  //challenge 4
  


}
  
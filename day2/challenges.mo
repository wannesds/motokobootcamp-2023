import Array "mo:base/Array";
import Int "mo:base/Int";
import Nat "mo:base/Nat";
import Text "mo:base/Text";
import Char "mo:base/Char";

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
  public query func number_of_words(t : Text) : async Nat {
    var n : Nat = 0;
    let te = Text.split(t, #char(' '));
      for (e in te) {
        if (Text.contains(e, #predicate( func(x) {Char.isDigit(x)} ))) {
          } else { n += 1 };
      };
    return n;
  };

  //challenge 5
  public query func find_duplicates(a : [Nat]) : async [Nat] { 
    var newA : [Nat] = [];
      for (n in a.vals()) {
          var dupN : [Nat] = Array.filter<Nat>(a, func (x: Nat) : Bool {x == n});
          if(dupN.size() > 1) {
            newA := Array.append(newA, [n]);
          };
      };
      return newA;
  };

  //challenge 6
  public func convert_to_binary(n : Nat) : async Text {
    var in_bits = 0;
    var na = n;
    var m = 1;
    while(na > 0) {
      let rest = na % 2;
      in_bits += rest * m;
      na /= 2;
      m *= 10;
    };
    return Nat.toText(in_bits);
  };

}
  
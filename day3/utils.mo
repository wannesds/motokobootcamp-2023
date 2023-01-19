import Int "mo:base/Int";
import Array "mo:base/Array";

actor {
  //challenge 1
  public query func second_maximum(array : [Int]) : async Int {
    let a_ : [Int] = Array.sort(array, Int.compare);
    return a_[a_.size() - 2];
  };

  //challenge 2
  public query func remove_even(array : [Nat]) : async [Nat] {
    return Array.mapFilter<Nat, Nat>(
      array,
      func x = if (x % 2 == 0) {null} else {?x}
    );
  };
}
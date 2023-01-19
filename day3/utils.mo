import Int "mo:base/Int";
import Array "mo:base/Array";

actor {
  //challenge 1
  public query func second_maximum(array : [Int]) : async Int {
    let a_ : [Int] = Array.sort(array, Int.compare);
    return a_[a_.size() - 2];
  };
}
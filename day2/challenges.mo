import Array "mo:base/Array";
import Int "mo:base/Int";
actor {
  //challenge 1
  public query func average_array(array : [Int]) : async Int {
    return Array.foldLeft<Int, Int>(array, 0, Int.add)
  };
}
  
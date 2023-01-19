import Int "mo:base/Int";
import Array "mo:base/Array";


module {
  //challenge 1
  public query func second_maximum(array : [Int]) : async Int {
    let a_ : [Int] = Array.sort(array, Int.compare);
    return a_[a_.size() - 2];
  };

  //challenge 2
  public query func remove_even(array : [Nat]) : async [Nat] {
    return Array.filter<Nat>(
      array,
      func x = x % 2 != 0
    );
  };

  //challenge 3
  public func drop<T>(xs : [T], n : Nat) : [T] {
    return Array.tabulate<T>(
      xs.size() - n, 
      func i = xs[i + n]
    );
  };
}
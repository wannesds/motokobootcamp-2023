import List "mo:base/List";
import Prim "mo:⛔";

actor {

  //challenge 1
  public type List<T> = List.List<T>;
  
  private func unique<T>(l : List<T>, equal: (T,T) -> Bool) : List<T> {
       //this sucked so hard, especially with the required equal stuff.
       //tried switch in switch statement with recursive func calling, but couldnt get it working
       return l;
    };
  
  //challenge 2
  private func reverse<T>(l : List<T>) : List<T> {
    func rec(l : List<T>, r : List<T>) : List<T> {
      switch l {
        case null { r };
        case (?(h, t)) { rec(t, ?(h, r)) }
      }
    };
    rec(l, null)
  };

  //challenge 3
  private let anonymousPrincipal : Blob = "\04";

  public func isAnonymous(p : Principal) : async Bool {
    Prim.blobOfPrincipal p == anonymousPrincipal;
  };
}


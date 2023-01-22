import List "mo:base/List";
import Array "mo:base/Array";

import Prim "mo:⛔";

actor {

  //challenge 1
  public type List<T> = List.List<T>;

  private func unique<T>(l : List<T>, equal: (T,T) -> Bool) : List<T> {
    //this function is wrong, i stopped working on it. It might need a intern iterating function
    //or put each element one by one in a hasmap if that value isnt in hashmap yet
       let arr : [T] = List.toArray<T>(l);
       var newArr : [T] = [arr[0]];
       for (e in arr.vals()) { 
         let v : ?T = Array.find<T>(newArr, func(x) {equal(x, e)}) ;
         switch (v) {
           case (null) (newArr := Array.append<T>(newArr, [e]));
           case (?_) ();
         };
         
       };
       return List.reverse<T>(List.fromArray<T>(newArr));
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



  //from older bootcamp, TEMPORARY
    // public func last<T>(list : List<T>) : Bool {
  //       switch(list){
  //           case(null) return false;
  //           case(?(element, null)) return ?element;
  //           case(?(element, next_list)) return (last(next_list));
  //       };
  //   };
  


}


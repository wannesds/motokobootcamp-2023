actor {
    //challenge 1
    public query func multiply(n: Nat, m: Nat) : async Nat {
        return n * m;
    };

    //challenge 2
    public query func volume(n: Nat) : async Nat {
        return n ** 3;
    };

    //challenge 3
    public query func hours_to_minutes(n: Nat) : async Nat {
        return n * 60;
    };

    //challenge 4
    var counter : Nat = 0;

    public func set_counter(n: Nat) : async () {
        counter := n;
    };
    public query func get_counter() : async Nat {
        return counter;
    };

    //challenge 5
    public query func test_divide(n: Nat, m: Nat) : async Bool {
        return if(n % m > 0) {
          false;
        } else {
          true;
        };
    };

    //challenge 6
    public query func is_even(n: Nat) : async Bool {
        return if (n % 2 > 0) {
          false;
        } else {
          true;
        };
    };

}


// 1. A 2-qubit system in the state

// |ψ) =
// 1
// √2
// 0) ® (a|0) + b|1)) +
// 1
// √2
// 1) ® (b|0) + a|1)),

// where the constants a and b satisfying |a|2 + |b|2 = 1 are unknown.
// 2. An integer ind which is either 0 or 1.

// Goal:

// • If ind equals 0, convert the state of the second qubit into a|0) + b|1)
// • If ind equals 1, convert the state of the second qubit into b|0) + a|1).

// The state of the first qubit at the end doesn't matter (it has to be not entangled with the second qubit).


namespace Kata {
    operation StateSelection(qs : Qubit[], ind : Int) : Unit {
        // Main point. If we will use M(qs[0]), our second part can be swap a <-> b with 50/50 probability.
        // And we can find which exactly case we get, by saving result of M(qs[0])

        let changes = M(qs[0]) == Zero ? 1 | 0;
        if (ind == changes) {X(qs[1]);}
        
    }
}
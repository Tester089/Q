// Inputs:
// 1. qs: an array of N qubits in the (0) states,
// 2. bases: a Bool array of length N; bases [i] indicates the basis that should be used to prepare the qubit i:
// Ο
// false : use the basis |0) / 1) (computational),
// true : use the basis |+) / |-) (Hadamard).
// 3. bits: a Bool array of length N; bits[i] indicates the bit to encode in the i-th qubit: false = 0, true = 1.
// Goal: Prepare the qubits in the described state.

namespace Kata {
    operation PrepareQubits(qs : Qubit[], bases : Bool[], bits : Bool[]) : Unit {
        let L = Length(bits);
        for i in 0..L-1 {
            if (bits[i]) {X(qs[i]);}
            if (bases[i]) {H(qs[i]);}
        }

    }
}

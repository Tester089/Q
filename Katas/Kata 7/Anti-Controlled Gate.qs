// Input: Two qubits (stored in an array of length 2) in an arbitrary two-qubit state
// |00) + |01) + γ|10) + δ|11).
// Goal: Change the two-qubit state to |00) + α|01) + γ|10) + δ|11).

namespace Kata {
    operation AntiControlledGate (qs : Qubit[]) : Unit is Adj + Ctl {
        // Implement your solution here...
        X(qs[0]);
        CNOT(qs[1],qs[0]);
        SWAP(qs[0],qs[1]);
        CNOT(qs[1], qs[0]);
        X(qs[0]);
        // Shorter and better
        // X(qs[1]);
        // CNOT(qs[0], qs[1]);
        
    }
}
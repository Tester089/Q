// Distinguish Four Basis States
// Input: Two qubits (stored in an array of length 2) which are guaranteed to be in one of the four basis
// states (|00⟩, |01⟩, |10⟩, or |11⟩).
// Output:
// • 0 if the qubits were in the |00⟩ state,
// • 1 if they were in the |01⟩ state,
// • 2 if they were in the |10⟩ state,
// • 3 if they were in the |11⟩ state.
// In this task and the subsequent ones the order of qubit states in task description matches the order of
// qubits in the array (that is, |10⟩ state corresponds to qs[0] in state |1⟩ and qs[1] in state |0⟩).
// The state of the qubits at the end of the operation doesn't matter.

namespace Kata {
    operation BasisStateMeasurement(qs : Qubit[]) : Int {
        // Implement your solution here...

        return (M(qs[0]) == One ? 1 | 0 )*2 + (M(qs[1]) == One ? 1 | 0 )*1;
    }
}
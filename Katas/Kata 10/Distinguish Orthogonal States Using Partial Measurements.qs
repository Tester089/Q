// Distinguish Orthogonal States Using Partial Measurements
// Input: A 3-qubit system which is guaranteed to be in either the |+++−⟩ state, or the |−−−⟩ state.

// Output:

// • 0 if the qubit is in the |+++−⟩ state,
// • 1 if the qubit is in the |−−−⟩ state.

// The state of the qubits at the end of the operation should be the same as the initial state.


namespace Kata {
    import Std.Diagnostics.DumpMachine;
    operation IsPlusPlusMinus(qs : Qubit[]) : Int {
        // Implement your solution here...

        // let answer = MResetX(qs[0])== One ? 1 | 0; doesnt work

        H(qs[0]);
        let answer = M(qs[0]) == One ? 1 | 0;
        H (qs[0]);

        return answer;
    }
}
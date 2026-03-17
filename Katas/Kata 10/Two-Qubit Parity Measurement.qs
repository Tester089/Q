// Input: Two qubits stored in an array which are guaranteed to be either in a superposition of the states |00) and |11) or in a
// superposition of states |01) and |10).

// Output: 0 if qubits were in the first superposition, 1 if they were in the second superposition.
// The state of the qubits at the end of the operation should be the same as the starting state.


namespace Kata {
    import Std.Diagnostics.DumpMachine;
    operation ParityMeasurement(qs : Qubit[]) : Int {
        CNOT(qs[0], qs[1]);
        let answer = M(qs[1]) == One ? 1 | 0;
        CNOT(qs[0], qs[1]);

        return answer;
    }
}
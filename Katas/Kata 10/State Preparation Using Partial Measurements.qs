// Input: Two qubits in the state |00).
// Goal: Modify the qubits to the state 1 (|00) + |01) + |10)) using post-selection.
// √3

namespace Kata {
    import Std.Diagnostics.DumpMachine;
    operation PostSelection(qs : Qubit[]) : Unit {
        // Implement your solution here...
        use third = Qubit();

        H(qs[0]);
        H(qs[1]);
        CCNOT(qs[0], qs[1], third);
        M(third);
        DumpMachine();

    }
}
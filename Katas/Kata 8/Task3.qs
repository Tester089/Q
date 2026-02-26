// All Two-Qubit Basis Vectors with Complex Phases
// Input: Two qubits in the |00⟩ state (stored in an array of length 2).
// Goal: Change the state of the qubits to ½ (|00⟩ + i|01⟩ − |10⟩ − i|11⟩).



namespace Kata {
    operation AllBasisVectorsWithComplexPhases_TwoQubits (qs : Qubit[]) : Unit is Adj + Ctl {
        // Implement your solution here...
        H(qs[0]);
        H(qs[1]);

        Z(qs[0]);
        S(qs[1]);

        
    }
}

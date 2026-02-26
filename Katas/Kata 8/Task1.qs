// From: |00>
// To:   |+> (x) |+> = 1/2 (|00> + |01> + |10> + |11>)


namespace Kata {
    operation AllBasisVectors_TwoQubits (qs : Qubit[]) : Unit is Adj + Ctl {
        H(qs[0]);
        H(qs[1]);
        
    }
}

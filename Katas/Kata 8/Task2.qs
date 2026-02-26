// From: |00>
// To:   1/2(|00> + |01> + |10> - |11>)

namespace Kata {
    operation AllBasisVectorsWithPhaseFlip_TwoQubits (qs : Qubit[]) : Unit is Adj + Ctl {
        H(qs[0]);
        H(qs[1]);
        Controlled Z([qs[0]], qs[1]);
        
    }
}

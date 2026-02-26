// From: |00>
// To:   1/sqrt(3)(|00> + |01> + |11>)

namespace Kata {
    import Std.Math.Sqrt;
    import Std.Math.ArcSin;
    operation ThreeStates_TwoQubits (qs : Qubit[]) : Unit {
        let theta = 2.0 * ArcSin(1.0 / Sqrt(3.0));
        Ry(theta, qs[0]);
        X(qs[0]);
        Controlled H([qs[0]], qs[1]);
        X(qs[0]);
    }  
}



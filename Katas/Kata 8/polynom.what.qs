// Input: Two qubits in the |00) state (stored in an array of length 2).

// Goal: Change the state to 3(|00) + ω|01) + ω2|10)), where ω = e2πί/3.

namespace Kata {
    import Std.Math.*;

    operation ThreeStates_TwoQubits_Phases(qs : Qubit[]) : Unit {
        // Implement your solution here...
        ThreeStates_TwoQubits(qs);
        let alpha = 2.0 * PI() / 3.0;
        let betta = 4.0 * PI() / 3.0;
        X(qs[0]);
        Controlled R1([qs[1]], (alpha, qs[0]));
        X(qs[0]);
        X(qs[1]);
        Controlled R1([qs[0]], (betta, qs[1])); 
        X(qs[1]);
        

    }

    // You might find this helper operation from an earlier task useful.
    operation ThreeStates_TwoQubits(qs : Qubit[]) : Unit is Adj {
        let theta = ArcSin(1.0 / Sqrt(3.0));
        Ry(2.0 * theta, qs[1]);
        X(qs[1]);
        Controlled H([qs[1]], qs[0]);
        X(qs[1]);
    }
}

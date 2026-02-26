// From:   |00..00>
// To:   1/sqrt(N) (|10..00> + |01..00> + ... + |00..01>)

namespace Kata {
    import Std.Math.Sqrt;
    import Std.Math.ArcCos;
    import Std.Convert.*;

    operation WState_PowerOfTwo (qs : Qubit[]) : Unit is Adj + Ctl {
        let N = Length(qs);
        
        if N == 1 {
            X(qs[0]);
        } else {
            let theta = 2.0 * ArcCos(Sqrt(IntAsDouble(N - 1) / IntAsDouble(N)));
            Ry(theta, qs[0]);
            
            X(qs[0]);
            Controlled WState_PowerOfTwo([qs[0]], qs[1...]);
            X(qs[0]);
        }

    }

    operation WState_Arbitrary (qs : Qubit[]) : Unit {
        WState_Recursive(qs);
    }

    operation WState_Recursive(qs : Qubit[]) : Unit is Adj + Ctl {
        let N = Length(qs);
        
        if N == 1 {
            X(qs[0]);
        } else {
            let theta = 2.0 * ArcCos(Sqrt(IntAsDouble(N - 1) / IntAsDouble(N)));
            Ry(theta, qs[0]);
            
            X(qs[0]);
            Controlled WState_Recursive([qs[0]], qs[1...]);
            X(qs[0]);
        }
    }
}
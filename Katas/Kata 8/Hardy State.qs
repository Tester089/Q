// Hardy State is
// 1/sqrt(12) * (3|00> + |01> + +|10> + |11>)

namespace Kata {
    import Std.Math.*;
    operation Hardy_State (qs : Qubit[]) : Unit {
        let theta = ArcCos(Sqrt(10.0 / 12.0));
        Ry(2.0 * theta, qs[0]);
        X(qs[0]);
        Controlled Ry([qs[0]], (2.0 * ArcCos(3.0 / Sqrt(10.0)), qs[1]));
        X(qs[0]);
        Controlled Ry([qs[0]], (2.0 * PI() / 4.0, qs[1]));



    }
}

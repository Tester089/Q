namespace Kata {
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Math;

    import Std.Math.PI;

    // From: |00>
    // To:   1/√2(|00> - |01>)
    operation PrepareSuperposition(qs : Qubit[]) : Unit is Adj + Ctl {
        // Implement your solution here...
        H(qs[1]);
        Z(qs[1]);
        // Rx(PI()/4.0, qs[1]);
    }
}
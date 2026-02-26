namespace Kata {
    import Std.Arrays.*;

    // From: |0..0>
    // To:   |0..0> + |1..1>

    operation GHZ_State(qs : Qubit[]) : Unit is Adj + Ctl {
        H(qs[0]);
        for q in Rest(qs) {
            CNOT(qs[0], q);
        }

    }
}

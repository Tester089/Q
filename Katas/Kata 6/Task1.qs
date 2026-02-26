namespace Kata {
    // From: |00>
    // To:   |11>
    operation PrepareBasisState(qs : Qubit[]) : Unit is Adj + Ctl {
    X(qs[0]);
    X(qs[1]);

    }
}

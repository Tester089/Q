namespace Kata {
    // From: |00>
    // To:   1/2(|00> - |01> + |10> - |11>)
    operation PrepareWithReal(qs : Qubit[]) : Unit is Adj + Ctl {
        X(qs[1]);
        H(qs[1]);
        H(qs[0]);

    }
}
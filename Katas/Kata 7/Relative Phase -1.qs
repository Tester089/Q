namespace Kata {
    // From: |+> (x) |+> = 1/2(|00> + |01> + |10> + |11>)
    // To: 1/2(|00> + |01> + |10> - |11>)
    operation RelativePhaseMinusOne (qs : Qubit[]) : Unit is Adj + Ctl {
        // Implement your solution here...
        CZ(qs[0], qs[1]);
        // or Controlled Z([qs[0]], qs[1]);

    }
}
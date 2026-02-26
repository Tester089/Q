namespace Kata {
    // Apply the following matrix to the system
    // [[0, -i, 0, 0, 0, 0, 0, 0],
    //  [i, 0, 0, 0, 0, 0, 0, 0],
    //  [0, 0, 0, -i, 0, 0, 0, 0],
    //  [0, 0, i, 0, 0, 0, 0, 0],
    //  [0, 0, 0, 0, 0, 1, 0, 0],
    //  [0, 0, 0, 0, -1, 0, 0, 0],
    //  [0, 0, 0, 0, 0, 0, 0, 1],
    //  [0, 0, 0, 0, 0, 0, -1, 0]]
    operation CompoundGate(qs : Qubit[]) : Unit is Adj + Ctl {
        S(qs[0]);
        I(qs[1]);
        Y(qs[2])

    }
}
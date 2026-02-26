namespace Kata {
    operation FourBitstringSuperposition (qs : Qubit[], bits : Bool[][]) : Unit {
        use anc = Qubit[2];
        H(anc[0]);
        H(anc[1]);

        for i in 0 .. 3 {
            for j in 0 .. Length(qs) - 1 {
                if bits[i][j] {
                    ApplyControlledOnInt(i, X, anc, qs[j]);
                }
            }
        }

        for i in 0 .. 3 {
            if i % 2 == 1 {
                ApplyControlledOnBitString(bits[i], X, qs, anc[0]);
            }
            if i / 2 == 1 {
                ApplyControlledOnBitString(bits[i], X, qs, anc[1]);
            }
        }
    }
}


// Not my sollution. Want to understand this alg. 
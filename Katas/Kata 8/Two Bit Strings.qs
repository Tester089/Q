namespace Kata {
    function FindFirstDiff (bits1 : Bool[], bits2 : Bool[]) : Int {
        for i in 0 .. Length(bits1) - 1 {
            if bits1[i] != bits2[i] {
                return i;
            }
        }
        return -1;
    }

    operation TwoBitstringSuperposition (qs : Qubit[], bits1 : Bool[], bits2 : Bool[]) : Unit is Adj + Ctl {
        let firstDiff = FindFirstDiff(bits1, bits2);

        H(qs[firstDiff]);

        for i in 0 .. Length(qs) - 1 {
            if bits1[i] == bits2[i] {
                if bits1[i] {
                    X(qs[i]);
                }
            } else {
                if i > firstDiff {
                    CNOT(qs[firstDiff], qs[i]);
                    if bits1[i] != bits1[firstDiff] {
                        X(qs[i]);
                    }
                }
            }
        }
    }  
}

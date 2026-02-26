namespace Kata {
    operation EvenOddNumbersSuperposition(qs : Qubit[], isEven : Bool) : Unit is Adj + Ctl {
        let N = Length(qs);
        for i in 0..N-2 {
            H(qs[i]);
        }
        if not isEven {X(qs[N-1]);}

    }
}


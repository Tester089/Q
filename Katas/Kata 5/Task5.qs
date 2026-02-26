namespace Kata {
    // From: |ψ) = |0〉

    // To          |-〉 
    operation BasisChange (q : Qubit) : Unit is Adj + Ctl {
        X(q);
        H(q);
     
    }
}
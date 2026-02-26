namespace Kata {
    // From: |ψ) =  α|0⟩ +  β|1⟩.
    // To:  i|ψ) = iα|0⟩ + iβ|1⟩
    operation SignFlipOnZero (q : Qubit) : Unit is Adj + Ctl {

        X(q);
        Z(q);
        X(q);
                

    }
}
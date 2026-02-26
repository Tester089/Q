namespace Kata {
    // From: |ψ) = α|0⟩ + β|1⟩.
    // To:        −α|0⟩ + β|1⟩
    operation SignFlipOnZero (q : Qubit) : Unit is Adj + Ctl {
        // Implement your solution here...
        X(q);
        Z(q);
        X(q);
                

    }
}
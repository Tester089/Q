namespace Kata {
    // From: |ψ) = β|0⟩ + γ|1⟩.
    // To:        -β|0⟩ - γ|1⟩
    operation GlobalPhaseChange (q : Qubit) : Unit is Adj + Ctl {
        // Implement your solution here...
        X(q);
        Z(q);
        X(q);
        Z(q);
        
    }
}
namespace Kata {
    // From: |Ф+> = 1/√2 (|00> + |11>)
    // To:   |Ψ+) = 1/√2 (|01> + |10>)
    operation BellStateChange2 (qs : Qubit[]) : Unit is Adj + Ctl {
        // Implement your solution here...
        X(qs[1])
        
    }
}
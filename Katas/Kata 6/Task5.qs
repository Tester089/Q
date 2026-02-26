namespace Kata {
    // From: |Ф+> = 1/√2(|00> + |11>)
    // To:   |Ф-> = 1/√2(|00> - |11>)
    operation BellStateChange1 (qs : Qubit[]) : Unit is Adj + Ctl {
        // Implement your solution here...
        Z(qs[0]);
        
    }
}
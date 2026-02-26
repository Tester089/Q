namespace Kata {
    // From: |00>
    // To:   |Ф+> = 1/√2(|00> + |11>)
    operation EntangleQubits (qs : Qubit[]) : Unit is Adj + Ctl {
        // Implement your solution here...
        CNOT(qs[0], qs[1]);

    }
}
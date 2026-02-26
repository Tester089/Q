namespace Kata {
    // From: |00> + |10>
    // To:   |00> + |11>
    operation EntangleQubits (qs : Qubit[]) : Unit is Adj + Ctl {
        // Implement your solution here...
        CNOT(qs[0], qs[1]);

    }
}
namespace Kata {
    // From: α|000) + β|001) + γ|010) + δ|011) + €|100) + **j**|101) + **n**|110) + θ|111).
    // To:   α|000) + β|001) + γ|010) + δ|011) + €|100) + **n**|101) + **j**|110) + θ|111).


    operation FredkinGate (qs : Qubit[]) : Unit is Adj + Ctl {
        // Implement your solution here...
        Controlled SWAP([qs[0]], (qs[1], qs[2]));
        
    }
}

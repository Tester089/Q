// From: α|000) + β|001) + γ|010) + δ|011) + €|100) + ζ|101) + n|110) + O|111).
// To:   α|000) + β|001) + γ|010) + δ|011) + €|100) + ζ|101) + O|110) + n|111).

namespace Kata {
    operation ToffoliGate (qs : Qubit[]) : Unit is Adj + Ctl {
        // Implement your solution here...
        Controlled X([qs[0], qs[1]], qs[2]);
    }
}
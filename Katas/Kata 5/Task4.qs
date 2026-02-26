namespace Kata {
    // From: |ψ) = a|0〉+ β|1〉

    // If |ψ〉= |0〉 change its state to |+〉= 1/√2(|0〉+ |1〉) 

    // If |ψ〉= |1〉 change its state to |+〉= 1/√2(|0〉- |1〉) 
    operation BasisChange (q : Qubit) : Unit is Adj + Ctl {
        X(q);
        H(q);
        Z(q);
     
    }
}
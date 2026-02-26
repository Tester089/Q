// From: |0> and Angle theta
// To:   cosA|0> + sinA|1>


namespace Kata {
    operation UnequalSuperposition(q : Qubit, alpha : Double) : Unit {
        Ry(alpha * 2.0, q);
        
    }
}

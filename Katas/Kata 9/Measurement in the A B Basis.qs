// Inputs:
// 1. Angle α, in radians, represented as a Double .
// 2. A qubit in some unknown state.

// Output: Implement a measurement in the {|𝐴⟩, |𝐵⟩} basis. Same as in the previous exercise, |𝐴⟩ = cos α|0⟩ − 𝑖 sin α|1⟩ and
// |𝐵⟩ = −𝑖 sin α|0⟩ + cos α|1⟩. Return Zero if the measurement outcome is 𝐴, and One if the outcome is 𝐵. The state of the
// qubit after the measurement should correspond to the measurement result.


namespace Kata {
    operation MeasureInABBasis(alpha : Double, q : Qubit) : Result {
        Rx(-2.0*alpha, q);
        let answer = M(q);
        Rx(2.0*alpha, q);

        return answer;
    }
}


// just previous task but with return to original condition
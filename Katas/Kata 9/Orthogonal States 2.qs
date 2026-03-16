// Inputs:
// 1. Angle α, in radians, represented as a Double.
// 2. A qubit which is guaranteed to be in either the |A⟩ or the |B⟩ state, where |A⟩ = cos α|0⟩ − i sin α|1⟩ and
// |B⟩ = −i sin α|0⟩ + cos α|1⟩.

// Output: true if the qubit was in the |A⟩ state, or false if it was in the |B⟩ state. The state of the qubit at the end of the
// operation does not matter.
// ▼ Need a hint?
// An 𝑅z rotation can be used to go from the computational basis {|0⟩, |1⟩} to the {|A⟩, |B⟩} basis and vice versa.

namespace Kata {
    import Std.Math.ArcSin;
    import Std.Math.*;

    operation IsQubitA(alpha : Double, q : Qubit) : Bool {
        // Implement your solution here...


        Rx(-2.0*alpha, q);

        return M(q) == Zero;
    }
}


// By Rx we just convert given cos and sin to thier обратные. So, sequence Rx(2.0*alpha, q) and Rx(-2.0*alpha, q) 
// will give us in the result original q
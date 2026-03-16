// Input: A qubit which is guaranteed to be in either the |ψ₊⟩ or the |ψ₋⟩ state, where |ψ₊⟩ = 0.6|0⟩ + 0.8|1⟩ and
// |ψ₋⟩ = -0.8|0⟩ + 0.6|1⟩.

// Output: true if the qubit was in the |ψ₊⟩ state, or false if it was in the |ψ₋⟩ state. The state of the qubit at the end of the
// operation does not matter.


namespace Kata {
    import Std.Math.*;

    operation IsQubitPsiPlus(q : Qubit) : Bool {
        // Implement your solution here...
        Ry(2.0 * ArcTan2(1.0/0.8, 1.0/0.6), q);

        return M(q) == One;
    }
}
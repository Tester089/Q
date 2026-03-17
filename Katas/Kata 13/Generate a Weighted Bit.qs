// In each of the above exercises, all generated numbers were equally likely. Now let's create an operation that will return a random
// bit with different probabilities of outcomes.
// Remember that by setting the amplitudes of basis states α and β, you can control the probability of getting measurement
// outcomes 0 and 1 when the qubit is measured.

// Input: A floating-point number x, 0 ≤ x ≤ 1.

// Goal: Generate 0 or 1 with probability of 0 equal to x and probability of 1 equal to 1 − x.


namespace Kata {
    import Std.Math.*;
    operation WeightedRandomBit(x : Double) : Int {
        // Implement your solution here...
        let theta = 2.0*ArcCos(Sqrt(x));
        use q = Qubit();
        Ry(theta, q);
        let answer = M(q) == One ? 1 | 0;
        Reset(q);
        

        return answer;
    }
}

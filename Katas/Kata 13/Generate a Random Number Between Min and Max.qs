// In the "Generate A Number Of Arbitrary Size" exercise, you generated numbers in the range [0, 2 – 1] (1 ≤ N ≤ 10). Now let's
// create an operation that will return a random number in the range [min, max].
// Input: Two integers min and max (0 < min <тах < 210 – 1).
// Goal: Generate a random number in the range [min, max] with an equal probability of getting each of the numbers in this range.

namespace Kata {
    import Std.Math.*;
    operation RandomNumberInRange(min : Int, max : Int) : Int {
        let N = BitSizeI(max-min);
        mutable result = RandomNBits(N);
        while (result < min or result > max) {
            set result = RandomNBits(N);
        } 

        return result;
    }

    // You can use the operations defined in the earlier exercises to implement your solution.
    operation RandomBit() : Int {
        use q = Qubit();
        H(q);
        return MResetZ(q) == Zero ? 0 | 1;
    }

    operation RandomNBits(N : Int) : Int {
        mutable result = 0;
        for i in 0 .. N - 1 {
            set result = result * 2 + RandomBit();
        }
        return result;
    }
}

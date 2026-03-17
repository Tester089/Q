// Input: An integer N.
// Output: A Bool array of length N, where each element is chosen at random as true or false with 50% probability.

namespace Kata {
    import Std.Random.*;


    operation RandomBit() : Int {
        use q = Qubit();
        H(q);
        return MResetZ(q) == Zero ? 0 | 1;
    }

    operation RandomArray(N : Int) : Bool[] {
        // Create a mutable array variable for storing the return value.
        
        mutable s = [RandomBit() == 0, size = N];

        return s;
    }
}
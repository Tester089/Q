// Let's take it a step further and generate an $N$-bit number.
// Input: An integer $N$ ($1 \leq N \leq 10$).
// Goal: Generate a random number in the range $[0, 2^N-1]$ with an equal probability of getting each of the numbers in this range.

namespace Kata {
    operation RandomNBits(N : Int) : Int {
        mutable answer = RandomBit();
        for i in 0..N-2 {
            set answer = answer * 2 + RandomBit();
        }
        return answer;
    }

    // You can use the operation defined in the first exercise to implement your solution.
    operation RandomBit() : Int {
        use q = Qubit();
        H(q);
        return MResetZ(q) == Zero ? 0 | 1;
    }
}

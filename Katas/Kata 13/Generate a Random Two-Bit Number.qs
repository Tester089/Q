// Now that you can generate a single random bit, you can use that logic to create random multi-bit numbers. Let's try first to make
// two-bit number by combining two randomly generated bits.
// Input: None.
// Goal: Generate a random number in the range [0, 3] with an equal probability of getting each of the four numbers.

namespace Kata {
    operation RandomTwoBits() : Int {

        return RandomBit()*2 + RandomBit();
    }

    // You can use the operation defined in the previous exercise to implement your solution.
    operation RandomBit() : Int {
        use q = Qubit();
        H(q);
        return MResetZ(q) == Zero ? 0 | 1;
    }
}

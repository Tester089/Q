// Input: None.
// Goal: Generate a 0 or 1 with equal probability.


namespace Kata {
    operation RandomBit() : Int {
        use q = Qubit();
        H(q);
        let result = M(q) == One ? 1 | 0;
        Reset(q);

        return result;
    }

}
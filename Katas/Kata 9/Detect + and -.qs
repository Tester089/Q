// if q = |+> give True
// else False

// there we use PauliX because for |+> we see our measure by line of "Horizont line in PauliX"
// fot |i> and |-i> we will use PauliY
// and the most common case, for |1> and |0> we use PaulZ

namespace Kata {
    operation IsQubitMinus(q : Qubit) : Bool {
        if (Measure([PauliX], [q]) == One) {return true}

        return false;
    }
}
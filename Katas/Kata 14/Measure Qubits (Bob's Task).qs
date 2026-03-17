// Inputs:
// 1. qs: an array of N qubits;
// each qubit is in one of the following states: 10), (1), |+), (-).
// 2. bases: a Bool array of length N; bases [i] indicates the basis that should be used to measure the qubit i:
// • false: use the basis |0) / 1) (computational),
// Ο
// true : use the basis |+) / |-) (Hadamard).
// Goal: Measure each qubit in the corresponding basis and return an array of results as Boolean values, encoding measurement
// result Zero as false and One as true. The state of the qubits at the end of the operation doesn't matter.

namespace Kata {
    operation MeasureQubits(qs : Qubit[], bases : Bool[]) : Bool[] {
        mutable array = [false, size=Length(qs)];
        for i in 0..Length(qs)-1 {
            if bases[i] {
                H(qs[i]);
            }
            set array w/= i <- M(qs[i]) == One;  
        }
        // Implement your solution here...
        return array;
    }
}

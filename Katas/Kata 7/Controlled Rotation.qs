// Inputs:

// 1. Two qubits in an arbitrary state |ø), stored as an array of length 2.
// 2. An angle 0: -π < 0 < π.

// Goal: Apply a controlled R, gate, using the first qubit as control and the second qubit as target, with
// O as the angle argument for the gate.

namespace Kata {
    operation ControlledRotation(qs : Qubit[], theta : Double)
    : Unit is Adj + Ctl {
        Controlled Rx([qs[0]], (theta, qs[1]))

    }
}
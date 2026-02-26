namespace Kata {
    operation AllBellStates (qs : Qubit[], index : Int) : Unit is Adj + Ctl {
        if (index == 0) { // |Ф+>
            H(qs[0]);
            CNOT(qs[0], qs[1]);

        } elif (index == 1) { // |Ф->
            H(qs[0]);
            CNOT(qs[0], qs[1]);
            Z(qs[0]);

        } elif (index == 2) { // |Ψ+>
            H(qs[0]);
            X(qs[1]);
            CNOT(qs[0], qs[1]);


        } else { // |Ψ->
            H(qs[0]);
            X(qs[1]);
            CNOT(qs[0], qs[1]);
            Z(qs[0]);

        }
        
    }
}


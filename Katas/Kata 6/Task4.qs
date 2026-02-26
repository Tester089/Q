namespace Kata {
    open Microsoft.Quantum.Math;

    // From: |00>
    // To:   1/2(|00> + e^(i*pi/4)|01> + e^(i*pi/2)|10> + e^(3*i*pi/4) |11>)


    operation PrepareWithComplex(qs : Qubit[]) : Unit is Adj + Ctl {
        // Implement your solution here...
        //H(qs[0]);
        H(qs[1]);
        H(qs[0]);
        S(qs[0]);
        T(qs[1]);
        

    }
}
namespace Kata {
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Diagnostics;

    @EntryPoint()
    operation Main() : Unit {
        use q = Qubit();
        FlipQubit(q);
        DumpMachine();
        Reset(q);
    }

    operation FlipQubit(q : Qubit) : Unit is Adj + Ctl {
        X(q);
        
    }
}
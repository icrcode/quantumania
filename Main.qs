import Microsoft.Quantum.Intrinsic.*;
import Microsoft.Quantum.Diagnostics.*;

operation Main() : (Result, Result) {
    use (q1, q2) = (Qubit(), Qubit());
    H(q1);
    CNOT(q1, q2);
    DumpMachine();

    let r1 = M(q1);
    let r2 = M(q2);
    Reset(q1);
    Reset(q2);
    return (r1, r2);
}
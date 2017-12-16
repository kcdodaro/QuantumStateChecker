namespace Quantum.QuantumFirstTest
{
    open Microsoft.Quantum.Primitive;
    open Microsoft.Quantum.Canon;

    operation QuantumTest () : (Bool, Bool)
    {
        body
        {
			mutable result1 = One;
			mutable result2 = One;

			using (qubits = Qubit[2])
			{

			let qubit1 = qubits[0];
			let qubit2 = qubits[1];

			X(qubit1);
			X(qubit2);

			if (M(qubit1) == Zero)
			{
				set result1 = Zero;
			}

			if (M(qubit2) == Zero)
			{
				set result2 = Zero;
			}

			ResetAll(qubits);
			}

			mutable bool1 = false;
			mutable bool2 = false;

			if (result1 == Zero)
			{
				set bool1 = true;
			}

			if (result2 == Zero)
			{
				 set bool2 = true;
			}

			return(bool1, bool2);
        }
    }
}

using Microsoft.Quantum.Simulation.Core;
using Microsoft.Quantum.Simulation.Simulators;
using System;

namespace Quantum.QuantumFirstTest
{
    class Driver
    {
        static void Main(string[] args)
        {
            var sim = new QuantumSimulator();
            var results = QuantumTest.Run(sim).Result;
            Console.WriteLine("All results are zero: " + results);

            Console.ReadKey();
        }
    }
}
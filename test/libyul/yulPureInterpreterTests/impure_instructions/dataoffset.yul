object "obj" {
    code {
        let x
        x := 1
        pop(dataoffset("obj"))
        x := 2
    }
}
// "obj" was evaluated before `dataoffset`
// Expectation for this test should be changed to `ImpureBuiltinEncountered`
// if in the future if "obj" is evaluated after

// ----
// Execution result: UnlimitedLiteralEncountered
// Outer most variable values:
//   x = 1
//
// Call trace:

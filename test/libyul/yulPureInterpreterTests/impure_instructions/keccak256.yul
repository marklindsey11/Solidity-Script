{
    let x
    x := 1
    pop(keccak256(0, 0))
    x := 2
}
// ----
// Execution result: ImpureBuiltinEncountered
// Outter most variable values:
//   x = 1
//
// Call trace:

{
    let x
    x := 1
    pop(calldatasize())
    x := 2
}
// ----
// Execution result: ImpureBuiltinEncountered
// Outter most variable values:
//   x = 1
//
// Call trace:
{
    let x
    x := 1
    calldatacopy(0, 0, 0)
    x := 2
}
// ----
// Execution result: ImpureBuiltinEncountered
// Outter most variable values:
//   x = 1
//
// Call trace:
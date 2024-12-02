object "a" {
    code {
        if call(address(), 0, 0, 10) {
            return(0, 32)
        }
        if staticcall(address(), 0, 0) {
            return(0, 32)
        }
        if delegatecall(address(), 0, 0) {
            return(0, 32)
        }

        revert(0, 0)
    }
}

// ====
// EVMVersion: >=prague
// bytecodeFormat: >=EOFv1
// ----
// TypeError 9132: (35-39): The "call" instruction is only available in legacy bytecode VMs (you are currently compiling to EOF).
// TypeError 3950: (35-60): Expected expression to evaluate to one value, but got 0 values instead.
// TypeError 9132: (110-120): The "staticcall" instruction is only available in legacy bytecode VMs (you are currently compiling to EOF).
// TypeError 3950: (110-137): Expected expression to evaluate to one value, but got 0 values instead.
// TypeError 9132: (187-199): The "delegatecall" instruction is only available in legacy bytecode VMs (you are currently compiling to EOF).
// TypeError 3950: (187-216): Expected expression to evaluate to one value, but got 0 values instead.

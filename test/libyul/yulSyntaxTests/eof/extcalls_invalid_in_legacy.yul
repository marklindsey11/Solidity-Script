object "a" {
    code {
        if extcall(address(), 0, 0, 0) {
            return(0, 32)
        }

        if extdelegatecall(address(), 0, 0) {
            return(0, 32)
        }

        if extstaticcall(address(), 0, 0) {
            return(0, 32)
        }

        revert(0, 0)
    }
}

// ====
// EVMVersion: >=prague
// bytecodeFormat: legacy
// ----
// TypeError 4328: (35-42): The "extcall" instruction is not available in legacy bytecode VMs.
// TypeError 3950: (35-62): Expected expression to evaluate to one value, but got 0 values instead.
// TypeError 4328: (113-128): The "extdelegatecall" instruction is not available in legacy bytecode VMs.
// TypeError 3950: (113-145): Expected expression to evaluate to one value, but got 0 values instead.
// TypeError 4328: (196-209): The "extstaticcall" instruction is not available in legacy bytecode VMs.
// TypeError 3950: (196-226): Expected expression to evaluate to one value, but got 0 values instead.

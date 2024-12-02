object "a" {
    code {
        if extcall(address(), 0, 0) {
            return(0, 32)
        }

        if extdelegatecall(address(), 0, 0, 10) {
            return(0, 32)
        }

        if extstaticcall(address(), 0, 0, 10) {
            return(0, 32)
        }

        revert(0, 0)
    }
}

// ====
// EVMVersion: >=prague
// bytecodeFormat: >=EOFv1
// ----
// TypeError 7000: (35-42): Function "extcall" expects 4 arguments but got 3.
// TypeError 7000: (110-125): Function "extdelegatecall" expects 3 arguments but got 4.
// TypeError 7000: (197-210): Function "extstaticcall" expects 3 arguments but got 4.

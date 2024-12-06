contract helper {
    bool flag;

    function getBalance() public payable returns (uint256 myBalance) {
        return address(this).balance;
    }

    function setFlag() public {
        flag = true;
    }

    function getFlag() public returns (bool fl) {
        return flag;
    }
}


contract test {
    helper h;

    constructor() payable {
        h = new helper();
    }

    function sendAmount(uint256 amount) public payable returns (uint256 bal) {
        return h.getBalance{value: amount}();
    }

    function outOfGas() public returns (bool ret) {
        h.setFlag();
        return true;
    }

    function checkState() public returns (bool flagAfter, uint256 myBal) {
        flagAfter = h.getFlag();
        myBal = address(this).balance;
    }
}
// ====
// bytecodeFormat: >=EOFv1
// EVMVersion: >=prague
// ----
// constructor(), 20 wei ->
// gas irOptimized: 120218
// gas irOptimized code: 132000
// gas legacy: 130568
// gas legacy code: 261000
// gas legacyOptimized: 121069
// gas legacyOptimized code: 147000
// sendAmount(uint256): 5 -> 5
// outOfGas() -> true
// checkState() -> true, 15

contract C {
    bytes public initCode;

    constructor() {
        // This should catch problems, but lets also test the case the optimiser is buggy.
        assert(address(this).code.length == 0);
        initCode = address(this).code;
    }

    // To avoid dependency on exact length.
    function f() public view returns (bool) { return address(this).code.length > 400; }
    function g() public view returns (uint) { return address(0).code.length; }
    function h() public view returns (uint) { return address(1).code.length; }
}
// ====
// compileViaYul: also
// ----
// constructor() ->
// gas ir: 390761
// gas irOptimized: 240202
// gas legacy: 261698
// gas legacyOptimized: 176961
// initCode() -> 0x20, 0
// f() -> true
// g() -> 0
// h() -> 0

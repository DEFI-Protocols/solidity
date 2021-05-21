contract C {
    uint x;
    uint y;
    function h() public returns (uint, uint) {
        return (x, y);
    }
    function g() public returns (uint, uint) {
        return (x, x);
    }
}
// ====
// compileViaYul: also
// ----
// g() -> 0, 0
// gas irOptimized: 23436
// gas legacy: 23715
// gas legacyOptimized: 23371
// g() -> 0, 0
// gas irOptimized: 21436
// gas legacy: 21715
// gas legacyOptimized: 21371
// h() -> 0, 0
// gas irOptimized: 23443
// gas legacy: 23693
// gas legacyOptimized: 23438
// h() -> 0, 0
// gas irOptimized: 21443
// gas legacy: 21693
// gas legacyOptimized: 21438

{

    function check(a, b)
    { if iszero(eq(a, b)) { revert(0, 0) } }
    
    check(mod(0x0, 0x0), 0x0)
    check(mod(0x0, 0x1), 0x0)
    check(mod(0x0, 0x2), 0x0)
    check(mod(0x0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff), 0x0)
    check(mod(0x0, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe), 0x0)
    check(mod(0x0, 0x2a0ad2a2c526c97ba4ad007d79af6df3ef119a74c02afb216791c21bb10dafd1), 0x0)
    check(mod(0x0, 0xd184776e785b0f2c2a78fe227e43554ae7a004c028571a59a3dafe33cb04426), 0x0)
    check(mod(0x0, 0x52ce0c067cce722748d645e39dc8a3d653b26ca8fb6c6d5ef599eb9b3792a07d), 0x0)
    check(mod(0x1, 0x0), 0x0)
    check(mod(0x1, 0x1), 0x0)
    check(mod(0x1, 0x2), 0x1)
    check(mod(0x1, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff), 0x1)
    check(mod(0x1, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe), 0x1)
    check(mod(0x1, 0x2a0ad2a2c526c97ba4ad007d79af6df3ef119a74c02afb216791c21bb10dafd1), 0x1)
    check(mod(0x1, 0xd184776e785b0f2c2a78fe227e43554ae7a004c028571a59a3dafe33cb04426), 0x1)
    check(mod(0x1, 0x52ce0c067cce722748d645e39dc8a3d653b26ca8fb6c6d5ef599eb9b3792a07d), 0x1)
    check(mod(0x2, 0x0), 0x0)
    check(mod(0x2, 0x1), 0x0)
    check(mod(0x2, 0x2), 0x0)
    check(mod(0x2, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff), 0x2)
    check(mod(0x2, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe), 0x2)
    check(mod(0x2, 0x2a0ad2a2c526c97ba4ad007d79af6df3ef119a74c02afb216791c21bb10dafd1), 0x2)
    check(mod(0x2, 0xd184776e785b0f2c2a78fe227e43554ae7a004c028571a59a3dafe33cb04426), 0x2)
    check(mod(0x2, 0x52ce0c067cce722748d645e39dc8a3d653b26ca8fb6c6d5ef599eb9b3792a07d), 0x2)
    check(mod(0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, 0x0), 0x0)
    check(mod(0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, 0x1), 0x0)
    check(mod(0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, 0x2), 0x1)
    check(mod(0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff), 0x0)
    check(mod(0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe), 0x1)
    check(mod(0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, 0x2a0ad2a2c526c97ba4ad007d79af6df3ef119a74c02afb216791c21bb10dafd1), 0x3bf102f6117471a23f1fd0f25e36c48659661437efe1d3792957359d9ade119)
    check(mod(0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, 0xd184776e785b0f2c2a78fe227e43554ae7a004c028571a59a3dafe33cb04426), 0x732b22cd113ddfb8d9052370a100ab70cf1fa5bd01890b58d6bf2227eeaf12d)
    check(mod(0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, 0x52ce0c067cce722748d645e39dc8a3d653b26ca8fb6c6d5ef599eb9b3792a07d), 0x795dbec8994a98a257d2e5526a6147d04e8ba050dbab7e31f323d2e59481e88)
    check(mod(0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe, 0x0), 0x0)
    check(mod(0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe, 0x1), 0x0)
    check(mod(0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe, 0x2), 0x0)
    check(mod(0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe)
    check(mod(0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe), 0x0)
    check(mod(0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe, 0x2a0ad2a2c526c97ba4ad007d79af6df3ef119a74c02afb216791c21bb10dafd1), 0x3bf102f6117471a23f1fd0f25e36c48659661437efe1d3792957359d9ade118)
    check(mod(0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe, 0xd184776e785b0f2c2a78fe227e43554ae7a004c028571a59a3dafe33cb04426), 0x732b22cd113ddfb8d9052370a100ab70cf1fa5bd01890b58d6bf2227eeaf12c)
    check(mod(0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe, 0x52ce0c067cce722748d645e39dc8a3d653b26ca8fb6c6d5ef599eb9b3792a07d), 0x795dbec8994a98a257d2e5526a6147d04e8ba050dbab7e31f323d2e59481e87)
    check(mod(0x2a0ad2a2c526c97ba4ad007d79af6df3ef119a74c02afb216791c21bb10dafd1, 0x0), 0x0)
    check(mod(0x2a0ad2a2c526c97ba4ad007d79af6df3ef119a74c02afb216791c21bb10dafd1, 0x1), 0x0)
    check(mod(0x2a0ad2a2c526c97ba4ad007d79af6df3ef119a74c02afb216791c21bb10dafd1, 0x2), 0x1)
    check(mod(0x2a0ad2a2c526c97ba4ad007d79af6df3ef119a74c02afb216791c21bb10dafd1, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff), 0x2a0ad2a2c526c97ba4ad007d79af6df3ef119a74c02afb216791c21bb10dafd1)
    check(mod(0x2a0ad2a2c526c97ba4ad007d79af6df3ef119a74c02afb216791c21bb10dafd1, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe), 0x2a0ad2a2c526c97ba4ad007d79af6df3ef119a74c02afb216791c21bb10dafd1)
    check(mod(0x2a0ad2a2c526c97ba4ad007d79af6df3ef119a74c02afb216791c21bb10dafd1, 0x2a0ad2a2c526c97ba4ad007d79af6df3ef119a74c02afb216791c21bb10dafd1), 0x0)
    check(mod(0x2a0ad2a2c526c97ba4ad007d79af6df3ef119a74c02afb216791c21bb10dafd1, 0xd184776e785b0f2c2a78fe227e43554ae7a004c028571a59a3dafe33cb04426), 0x2c1fc3e0e95b6a35cb650d70202cdf5e3a39990b89aa63098d8b271fafce35f)
    check(mod(0x2a0ad2a2c526c97ba4ad007d79af6df3ef119a74c02afb216791c21bb10dafd1, 0x52ce0c067cce722748d645e39dc8a3d653b26ca8fb6c6d5ef599eb9b3792a07d), 0x2a0ad2a2c526c97ba4ad007d79af6df3ef119a74c02afb216791c21bb10dafd1)
    check(mod(0xd184776e785b0f2c2a78fe227e43554ae7a004c028571a59a3dafe33cb04426, 0x0), 0x0)
    check(mod(0xd184776e785b0f2c2a78fe227e43554ae7a004c028571a59a3dafe33cb04426, 0x1), 0x0)
    check(mod(0xd184776e785b0f2c2a78fe227e43554ae7a004c028571a59a3dafe33cb04426, 0x2), 0x0)
    check(mod(0xd184776e785b0f2c2a78fe227e43554ae7a004c028571a59a3dafe33cb04426, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff), 0xd184776e785b0f2c2a78fe227e43554ae7a004c028571a59a3dafe33cb04426)
    check(mod(0xd184776e785b0f2c2a78fe227e43554ae7a004c028571a59a3dafe33cb04426, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe), 0xd184776e785b0f2c2a78fe227e43554ae7a004c028571a59a3dafe33cb04426)
    check(mod(0xd184776e785b0f2c2a78fe227e43554ae7a004c028571a59a3dafe33cb04426, 0x2a0ad2a2c526c97ba4ad007d79af6df3ef119a74c02afb216791c21bb10dafd1), 0xd184776e785b0f2c2a78fe227e43554ae7a004c028571a59a3dafe33cb04426)
    check(mod(0xd184776e785b0f2c2a78fe227e43554ae7a004c028571a59a3dafe33cb04426, 0xd184776e785b0f2c2a78fe227e43554ae7a004c028571a59a3dafe33cb04426), 0x0)
    check(mod(0xd184776e785b0f2c2a78fe227e43554ae7a004c028571a59a3dafe33cb04426, 0x52ce0c067cce722748d645e39dc8a3d653b26ca8fb6c6d5ef599eb9b3792a07d), 0xd184776e785b0f2c2a78fe227e43554ae7a004c028571a59a3dafe33cb04426)
    check(mod(0x52ce0c067cce722748d645e39dc8a3d653b26ca8fb6c6d5ef599eb9b3792a07d, 0x0), 0x0)
    check(mod(0x52ce0c067cce722748d645e39dc8a3d653b26ca8fb6c6d5ef599eb9b3792a07d, 0x1), 0x0)
    check(mod(0x52ce0c067cce722748d645e39dc8a3d653b26ca8fb6c6d5ef599eb9b3792a07d, 0x2), 0x1)
    check(mod(0x52ce0c067cce722748d645e39dc8a3d653b26ca8fb6c6d5ef599eb9b3792a07d, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff), 0x52ce0c067cce722748d645e39dc8a3d653b26ca8fb6c6d5ef599eb9b3792a07d)
    check(mod(0x52ce0c067cce722748d645e39dc8a3d653b26ca8fb6c6d5ef599eb9b3792a07d, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe), 0x52ce0c067cce722748d645e39dc8a3d653b26ca8fb6c6d5ef599eb9b3792a07d)
    check(mod(0x52ce0c067cce722748d645e39dc8a3d653b26ca8fb6c6d5ef599eb9b3792a07d, 0x2a0ad2a2c526c97ba4ad007d79af6df3ef119a74c02afb216791c21bb10dafd1), 0x28c33963b7a7a8aba4294566241935e264a0d2343b41723d8e08297f8684f0ac)
    check(mod(0x52ce0c067cce722748d645e39dc8a3d653b26ca8fb6c6d5ef599eb9b3792a07d, 0xd184776e785b0f2c2a78fe227e43554ae7a004c028571a59a3dafe33cb04426), 0x43c5f3d0fac4c76b8e8e696ae6f63da3cd66ae0ec4bc37d5827cc47cb710799)
    check(mod(0x52ce0c067cce722748d645e39dc8a3d653b26ca8fb6c6d5ef599eb9b3792a07d, 0x52ce0c067cce722748d645e39dc8a3d653b26ca8fb6c6d5ef599eb9b3792a07d), 0x0)
}
// ====
// maxTraceSize: 0
// ----
// Execution result: ExecutionOk
// Outter most variable values:
//
// Call trace:
{
    function nested_100() -> r {
        r := add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,0x1))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
    }

    function nested_32() -> r {
        r := add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,add(0x1,0x1))))))))))))))))))))))))))))))))
    }
}
// ----
// step: constantFunctionEvaluator
//
// {
//     function nested_100() -> r
//     {
//         r := add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, add(0x1, 0x1))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
//     }
//     function nested_32() -> r_1
//     { r_1 := 33 }
// }

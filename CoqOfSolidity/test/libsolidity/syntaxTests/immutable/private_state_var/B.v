(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

Module B.
  Definition code : Code.t := {|
    Code.name := "B_25";
    Code.hex_name := 0x425f323500000000000000000000000000000000000000000000000000000000;
    Code.code :=
      M.scope (
        do* ltac:(M.monadic (
          M.function (|
            "allocate_unbounded",
            [],
            ["memPtr"],
            M.scope (
              do* ltac:(M.monadic (
                M.assign (|
                  ["memPtr"],
                  Some (M.call (|
                    "mload",
                    [
                      [Literal.number 64]
                    ]
                  |))
                |)
              )) in
              M.pure BlockUnit.Tt
            )
          |)
        )) in
        do* ltac:(M.monadic (
          M.function (|
            "revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb",
            [],
            [],
            M.scope (
              do* ltac:(M.monadic (
                M.expr_stmt (|
                  M.call (|
                    "revert",
                    [
                      [Literal.number 0];
                      [Literal.number 0]
                    ]
                  |)
                |)
              )) in
              M.pure BlockUnit.Tt
            )
          |)
        )) in
        do* ltac:(M.monadic (
          M.function (|
            "constructor_B",
            [],
            [],
            M.scope (
              do* ltac:(M.monadic (
                M.declare (|
                  ["expr"],
                  Some (M.call (|
                    "fun_f",
                    []
                  |))
                |)
              )) in
              do* ltac:(M.monadic (
                M.declare (|
                  ["_1"],
                  Some (M.get_var (| "expr" |))
                |)
              )) in
              do* ltac:(M.monadic (
                M.expr_stmt (|
                  M.call (|
                    "mstore",
                    [
                      [Literal.number 128];
                      M.get_var (| "_1" |)
                    ]
                  |)
                |)
              )) in
              M.pure BlockUnit.Tt
            )
          |)
        )) in
        do* ltac:(M.monadic (
          M.function (|
            "zero_value_for_split_uint256",
            [],
            ["ret"],
            M.scope (
              do* ltac:(M.monadic (
                M.assign (|
                  ["ret"],
                  Some ([Literal.number 0])
                |)
              )) in
              M.pure BlockUnit.Tt
            )
          |)
        )) in
        do* ltac:(M.monadic (
          M.function (|
            "cleanup_rational_by",
            ["value"],
            ["cleaned"],
            M.scope (
              do* ltac:(M.monadic (
                M.assign (|
                  ["cleaned"],
                  Some (M.get_var (| "value" |))
                |)
              )) in
              M.pure BlockUnit.Tt
            )
          |)
        )) in
        do* ltac:(M.monadic (
          M.function (|
            "cleanup_uint256",
            ["value"],
            ["cleaned"],
            M.scope (
              do* ltac:(M.monadic (
                M.assign (|
                  ["cleaned"],
                  Some (M.get_var (| "value" |))
                |)
              )) in
              M.pure BlockUnit.Tt
            )
          |)
        )) in
        do* ltac:(M.monadic (
          M.function (|
            "identity",
            ["value"],
            ["ret"],
            M.scope (
              do* ltac:(M.monadic (
                M.assign (|
                  ["ret"],
                  Some (M.get_var (| "value" |))
                |)
              )) in
              M.pure BlockUnit.Tt
            )
          |)
        )) in
        do* ltac:(M.monadic (
          M.function (|
            "convert_rational_by_to_uint256",
            ["value"],
            ["converted"],
            M.scope (
              do* ltac:(M.monadic (
                M.assign (|
                  ["converted"],
                  Some (M.call (|
                    "cleanup_uint256",
                    [
                      M.call (|
                        "identity",
                        [
                          M.call (|
                            "cleanup_rational_by",
                            [
                              M.get_var (| "value" |)
                            ]
                          |)
                        ]
                      |)
                    ]
                  |))
                |)
              )) in
              M.pure BlockUnit.Tt
            )
          |)
        )) in
        do* ltac:(M.monadic (
          M.function (|
            "fun_f",
            [],
            ["var"],
            M.scope (
              do* ltac:(M.monadic (
                M.declare (|
                  ["zero_uint256"],
                  Some (M.call (|
                    "zero_value_for_split_uint256",
                    []
                  |))
                |)
              )) in
              do* ltac:(M.monadic (
                M.assign (|
                  ["var"],
                  Some (M.get_var (| "zero_uint256" |))
                |)
              )) in
              do* ltac:(M.monadic (
                M.declare (|
                  ["expr"],
                  Some ([Literal.number 0x01])
                |)
              )) in
              do* ltac:(M.monadic (
                M.assign (|
                  ["var"],
                  Some (M.call (|
                    "convert_rational_by_to_uint256",
                    [
                      M.get_var (| "expr" |)
                    ]
                  |))
                |)
              )) in
              do* ltac:(M.monadic (
                M.leave (||)
              )) in
              M.pure BlockUnit.Tt
            )
          |)
        )) in
        do* ltac:(M.monadic (
          M.scope (
            do* ltac:(M.monadic (
              M.expr_stmt (|
                M.call (|
                  "mstore",
                  [
                    [Literal.number 64];
                    M.call (|
                      "memoryguard",
                      [
                        [Literal.number 0xa0]
                      ]
                    |)
                  ]
                |)
              |)
            )) in
            do* ltac:(M.monadic (
              M.if_ (|
                M.call (|
                  "callvalue",
                  []
                |),
                M.scope (
                  do* ltac:(M.monadic (
                    M.expr_stmt (|
                      M.call (|
                        "revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb",
                        []
                      |)
                    |)
                  )) in
                  M.pure BlockUnit.Tt
                )
              |)
            )) in
            do* ltac:(M.monadic (
              M.expr_stmt (|
                M.call (|
                  "constructor_B",
                  []
                |)
              |)
            )) in
            do* ltac:(M.monadic (
              M.declare (|
                ["_1"],
                Some (M.call (|
                  "allocate_unbounded",
                  []
                |))
              |)
            )) in
            do* ltac:(M.monadic (
              M.expr_stmt (|
                M.call (|
                  "codecopy",
                  [
                    M.get_var (| "_1" |);
                    M.call (|
                      "dataoffset",
                      [
                        [Literal.string 0x425f32355f6465706c6f79656400000000000000000000000000000000000000]
                      ]
                    |);
                    M.call (|
                      "datasize",
                      [
                        [Literal.string 0x425f32355f6465706c6f79656400000000000000000000000000000000000000]
                      ]
                    |)
                  ]
                |)
              |)
            )) in
            do* ltac:(M.monadic (
              M.expr_stmt (|
                M.call (|
                  "setimmutable",
                  [
                    M.get_var (| "_1" |);
                    [Literal.string 0x3400000000000000000000000000000000000000000000000000000000000000];
                    M.call (|
                      "mload",
                      [
                        [Literal.number 128]
                      ]
                    |)
                  ]
                |)
              |)
            )) in
            do* ltac:(M.monadic (
              M.expr_stmt (|
                M.call (|
                  "return",
                  [
                    M.get_var (| "_1" |);
                    M.call (|
                      "datasize",
                      [
                        [Literal.string 0x425f32355f6465706c6f79656400000000000000000000000000000000000000]
                      ]
                    |)
                  ]
                |)
              |)
            )) in
            M.pure BlockUnit.Tt
          )
        )) in
        M.pure BlockUnit.Tt
      );
  |}.

  Module deployed.
    Definition code : Code.t := {|
      Code.name := "B_25_deployed";
      Code.hex_name := 0x425f32355f6465706c6f79656400000000000000000000000000000000000000;
      Code.code :=
        M.scope (
          do* ltac:(M.monadic (
            M.function (|
              "revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74",
              [],
              [],
              M.scope (
                do* ltac:(M.monadic (
                  M.expr_stmt (|
                    M.call (|
                      "revert",
                      [
                        [Literal.number 0];
                        [Literal.number 0]
                      ]
                    |)
                  |)
                )) in
                M.pure BlockUnit.Tt
              )
            |)
          )) in
          do* ltac:(M.monadic (
            M.scope (
              do* ltac:(M.monadic (
                M.expr_stmt (|
                  M.call (|
                    "mstore",
                    [
                      [Literal.number 64];
                      M.call (|
                        "memoryguard",
                        [
                          [Literal.number 0x80]
                        ]
                      |)
                    ]
                  |)
                |)
              )) in
              do* ltac:(M.monadic (
                M.expr_stmt (|
                  M.call (|
                    "revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74",
                    []
                  |)
                |)
              )) in
              M.pure BlockUnit.Tt
            )
          )) in
          M.pure BlockUnit.Tt
        );
    |}.

    Definition data : string :=
      "a2646970667358221220da0435a04343ca57fb20859531ad50bf909f7cadcbb9c97f11f9a10dfc1531e564736f6c634300081b0033".
  End deployed.
End B.

Definition codes : list (U256.t * M.t BlockUnit.t) :=
  ltac2:(
    let codes := Code.get_codes () in
    exact $codes
  ).

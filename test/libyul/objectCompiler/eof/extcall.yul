object "a" {
    code {
        if extcall(address(), 0, 0, 10) {
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
// bytecodeFormat: >=EOFv1
// ----
// Assembly:
//     /* "source":74:76   */
//   0x0a
//     /* "source":71:72   */
//   0x00
//     /* "source":57:66   */
//   dup1
//   address
//     /* "source":49:77   */
//   extcall
//     /* "source":46:95   */
//   rjumpi{tag_1}
//     /* "source":22:266   */
// tag_2:
//     /* "source":141:142   */
//   0x00
//     /* "source":127:136   */
//   dup1
//   address
//     /* "source":111:143   */
//   extdelegatecall
//     /* "source":108:161   */
//   rjumpi{tag_3}
//     /* "source":22:266   */
// tag_4:
//     /* "source":205:206   */
//   0x00
//     /* "source":191:200   */
//   dup1
//   address
//     /* "source":177:207   */
//   extstaticcall
//     /* "source":174:225   */
//   rjumpi{tag_5}
//     /* "source":22:266   */
// tag_6:
//     /* "source":248:249   */
//   0x00
//     /* "source":238:250   */
//   dup1
//   revert
//     /* "source":208:225   */
// tag_5:
//     /* "source":220:222   */
//   0x20
//     /* "source":217:218   */
//   0x00
//     /* "source":210:223   */
//   return
//     /* "source":144:161   */
// tag_3:
//     /* "source":156:158   */
//   0x20
//     /* "source":153:154   */
//   0x00
//     /* "source":146:159   */
//   return
//     /* "source":78:95   */
// tag_1:
//     /* "source":90:92   */
//   0x20
//     /* "source":87:88   */
//   0x00
//     /* "source":80:93   */
//   return
// Bytecode: ef000101000402000100260400000000800004600a5f8030f8e100195f8030f9e1000e5f8030fbe100035f80fd60205ff360205ff360205ff3
// Opcodes: 0xEF STOP ADD ADD STOP DIV MUL STOP ADD STOP 0x26 DIV STOP STOP STOP STOP DUP1 STOP DIV PUSH1 0xA PUSH0 DUP1 ADDRESS EXTCALL RJUMPI 0x19 PUSH0 DUP1 ADDRESS EXTDELEGATECALL RJUMPI 0xE PUSH0 DUP1 ADDRESS EXTSTATICCALL RJUMPI 0x3 PUSH0 DUP1 REVERT PUSH1 0x20 PUSH0 RETURN PUSH1 0x20 PUSH0 RETURN PUSH1 0x20 PUSH0 RETURN
// SourceMappings: 74:2:0:-:0;71:1;57:9;;49:28;46:49;22:244;141:1;127:9;;111:32;108:53;22:244;205:1;191:9;;177:30;174:51;22:244;248:1;238:12;;208:17;220:2;217:1;210:13;144:17;156:2;153:1;146:13;78:17;90:2;87:1;80:13

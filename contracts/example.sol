// SPDX-License-Identifier: MIT
pragma solidity >0.8.25;

contract Test {
    struct MyStruct {
        uint256 v;
        mapping(address => uint256) m;
    }

    bytes                                           transient b_t;
    bytes                                                     b_s;
    uint256                                         transient v_t;
    uint256                                                   v_s;
    uint256[]                                       transient a_t;
    uint256[]                                                 a_s;
    MyStruct                                        transient s_t;
    MyStruct                                                  s_s;
    mapping(address => uint256)                     transient m_t;
    mapping(address => uint256)                               m_s;
    mapping(address => mapping(uint256 => uint256)) transient m2_t;
    mapping(address => mapping(uint256 => uint256))           m2_s;

    // same name and parameters :/
    function id_t(mapping(address => uint256) transient m) internal view returns (mapping(address => uint256) transient) { return m; }
    function id_s(mapping(address => uint256) storage   m) internal view returns (mapping(address => uint256) storage  ) { return m; }

    function set(uint256 value) public {
        // b_t[0] = 0xFF;
        // b_s[0] = 0xFF;
        // v_t += value;
        // v_s += value;
        // a_t.push(value);
        // a_s.push(value);
        // a_t[0] += value;
        // a_s[0] += value;
        // s_t.v += value;
        // s_s.v += value;
        // s_t.m[msg.sender] += value;
        // s_s.m[msg.sender] += value;
        // m_t[msg.sender] += value;
        // m_s[msg.sender] += value;
        // m2_t[msg.sender][0] += value;
        // m2_s[msg.sender][0] += value;

        // (true ? m_t : m_s)[msg.sender] += value; // Error: resolution doesnt work well here :/
        // (false ? m_t : m_s)[msg.sender] += value; // Error: resolution doesnt work well here :/
        id_t(m_t)[msg.sender] += value;
        id_s(m_s)[msg.sender] += value;

        // MyStruct transient s_t_ref = s_t;
        // s_t_ref.v += value;

        // MyStruct transient s;
        // assembly { s.slot := 0 }
        // s.v *= value;

        // assembly {
        //     tstore(0, add(tload(0), value))
        // }
    }
}

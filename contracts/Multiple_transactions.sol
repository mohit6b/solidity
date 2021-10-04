// SPDX-License-Identifier: MIT

// Multiple Transactions or Group Transactions (if one fails, then every transaction fails)

pragma solidity >=0.4.22.0 <0.8.0;


contract Utils{
    
    function groupExecute(uint _argA, uint _argB) external {
        
        ContractA(0x7EF2e0048f5bAeDe046f6BF797943daF4ED8CB47).foo(_argA);
        ContractB(0xDA0bab807633f07f013f94DD0E6A4F96F8742B53).bar(_argB);
    }
}

contract ContractA {
    
    uint argA;
    function foo (uint _arg) external {
        argA = _arg;
    }
}

contract ContractB {
    
    uint argB;
    function bar(uint _arg) external {
        argB = _arg;
    }
}

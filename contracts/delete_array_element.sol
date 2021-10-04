// SPDX-License-Identifier: MIT

// Delete an element from solidity array in order/out of order

pragma solidity >=0.4.22.0 <0.8.0;

contract MyContract{
    
    string[] public data;
    
    constructor() public{
        data.push("Harvey");
        data.push("Jessica");
        data.push("Raechel");
        data.push("Donna");
        data.push("Mike");
        data.push("louis");
    }
    
    function removeNoOrder(uint _index) external {
        data[_index] = data[data.length - 1];
        data.pop;
    }
    
    function removeInOrder(uint _index) external{
        
        for(uint i=_index; i<data.length-1; i++){
            data[i] = data[i+1];
        }
        data.pop();
    }
}

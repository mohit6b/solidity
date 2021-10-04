// SPDX-License-Identifier: MIT

// Create same spot smart contract many time and keep track of addressses - on-chain

pragma solidity >=0.4.22 <0.8.0;

contract Factory{
    
    Child[] public children;
    event ChildCreated(
        uint date,
        uint _data,
        address childAddress
        );
    
    function createChild(uint _data) external {
        Child child =  new Child(_data);
        children.push(child);
        emit ChildCreated(
            block.timestamp,
            _data,
            address(child)
            );
    }
}

contract Child {
    uint data;
    
    constructor(uint _data) public {
        data = _data;
    }
}


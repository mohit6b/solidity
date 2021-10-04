// SPDX-License-Identifier:MIT

// Represent collection of data: Struct, Arrays, Mappings

pragma solidity >=0.4.22 <0.8.0;

contract Collection{
    
    struct User{
        uint id;
        string name;
    }
    mapping(uint => User) users;
    // User[] users;
    uint nextUserId;
}

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract person {

    string public name;
    uint public age;
    address public owner;

    constructor (string memory _name, uint _age) {
        name = _name;
        age = _age;
        owner = msg.sender;
    }

}
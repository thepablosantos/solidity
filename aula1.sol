// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

contract person {

    string public name;
    uint private age;
    bool internal brazilian;

    constructor() {

        name = "Pablo";
        age = 31;
        brazilian = true;
    }

    function setName (string memory _name) public {
        name = _name;
    }

    function setAge (uint _age) public {
        age = _age;
    }

}
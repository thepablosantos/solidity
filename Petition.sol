// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

contract Petition {

    string[3] private names;
    uint public nameCount;

    constructor() {
        nameCount = 0;
    }

    function registerName(string memory _name) public {
        names[nameCount] = _name;
    }

}
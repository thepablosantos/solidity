// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

contract person {

    string public name;
    uint public age;
    bool private brazilian;

    constructor() {

        name = "Pablo";
        age = 31;
        brazilian = true;

    }

}
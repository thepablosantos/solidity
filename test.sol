//SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

contract Persons {

    struct person {
        string public name;
        uint public age;
        bool public brazilian;
    }

    construct() {
        name = "Pablo";
        age = 31;
        brazilian = true;
    }

}
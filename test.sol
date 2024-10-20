//SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

contract Persons {

    struct person {
        string name;
        uint age;
        bool brazilian;
    }

    constructor() {
        person.name = "Pablo";
        person.age = 31;
        person.brazilian = true;
    }

}
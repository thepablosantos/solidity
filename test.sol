//SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

contract Persons {

    struct Person {
        string name;
        uint age;
        bool brazilian;
    }

    Person public person;

    constructor() {
        person.name = "Pablo";
        person.age = 31;
        person.brazilian = true;
    }

}
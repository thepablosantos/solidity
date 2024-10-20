//SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

contract Persons {

    struct Person {
        string name;
        uint age;
        bool brazilian;
    }

    Person public person;

    constructor(string memory _name, uint _age, bool _brazilian) {
        person.name = _name;
        person.age = _age;
        person.brazilian = _brazilian;
    }

}
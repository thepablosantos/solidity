//SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

    contract Persons {

        struct person {
            string name;
            uint age;
            bool brazilian;
        }

        person public persons;

        constructor(string memory _name, uint _age, bool _brazilian) {
            persons.name = _name;
            persons.age = _age;
            persons.brazilian = _brazilian;
        }

        function updatePerson(string memory _name, uint _age, bool _brazilian) public {
            persons.name = _name;
            persons.age = _age;
            persons.brazilian = _brazilian;
        }

        function getPerson() public view returns (string memory, uint, bool) {
            return (persons.name, persons.age, persons.brazilian);
        }

    }
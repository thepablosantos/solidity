// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

contract Storage {
    enum Status {
        Zero,
        Approved,
        Reproved,
        Undefined
    }

    struct Person {
        string name;
        uint256 age;
        bool brazilian;
        Status gradeStatus;
    }

    Person public p;

    constructor() {
        p.name = "Pablo";
        p.age = 31;
        p.brazilian = true;
        p.gradeStatus = Status.Undefined;
    }

    function setName(string memory _name) public {
        p.name = _name;
    }

    function setAge(uint _age) public {
        p.age = _age;
    }

    function setBrazilian(bool _brazilian) public {
        p.brazilian = _brazilian;
    }

    function updateGradeStatus(uint _value) public {
        if(_value >= 10 && _value >= 0){
            if (_value >= 7) {
            p.gradeStatus = Status.Approved;
            } else {
                if (_value == 0) {
                    p.gradeStatus = Status.Zero;
                } else {
                    p.gradeStatus = Status.Zero;
                }
            }   
        } else {
            p.gradeStatus = Status.Undefined;
        } 
    
    }

}

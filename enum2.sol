//SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

contract personExam {
    enum Status {
        Approved,
        Reproved,
        Zero,
        Undefined
    }

    struct Person {
        string name; //
        uint age; //
        uint grade;
        Status gradeStatus;
        bool brazilian; //
    }

    Person public p;

    constructor() {

        p.name = "Jeremias";
        p.age = 10;
        p.brazilian = true;
        p.gradeStatus = Status.Undefined;
    }
    
    function setName(string memory _name) public {
        p.name = _name;
    }

        function setAge(uint _age) public {
        p.age = _age;
    }

        function setBrazilian(bool _br) public {
        p.brazilian = _br;
    }

    function updateGradeStatus(uint _value) public {
        if (_value >= 7) {
            p.gradeStatus = Status.Approved;
        } else if (_value == 0) {
            p.gradeStatus = Status.Zero;
        } else {
            p.gradeStatus = Status.Reproved;
        }
    }
} //
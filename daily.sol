// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

contract Aluno {

    string public student;
    uint public value;
    
    constructor() {
        student = "empty";
        value = 0;
    }


    function setStudent(string memory _student) public {
        student = _student;
    }

    function setValue(uint _value) public {
        require(_value <= 10, "Nota invalida.");
        value = _value;
    }

    function getGradeStatus() public view returns (string memory) {
        if (value == 0) {
            return "Zero";
        } else if (value > 7) {
            return "Aprovado";
        } else {
            return "Reprovado";
        }
    }
}
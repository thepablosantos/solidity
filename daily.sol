// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

contract Aluno {

    string public gradeStatus;
    
    constructor() {
        gradeStatus = "empty";
    }


    function updateGradeStatus(uint _value) public {
        if (_value >= 7) {
            gradeStatus = "Aprovado";
        } else if (_value == 0) {
            gradeStatus = "Zero";
        } else {
            gradeStatus = "Reprovado";
        }
    }
}
// SPDX-License-Identifer: MIT

pragma solidity ^0.8.19;

contract personData {

    string public name;
    string public gradeStatus;
    uint public grade;
    uint private age;
    bool internal brazilian;


    constructor() {

        name = "Jeremias";
        gradeStatus = "empty";
        age = 10;
        brazilian = true;
    }

    function setName(string memory _name) public {
        name = _name;
    }

    function setAge(uint _age) public {
        age = _age;
    }

    function setNationality(bool _brazilian) public {
        brazilian = _brazilian;
    }

    function setGrade(uint _grade) public {
        require(_grade <= 10, "Invalid grade");
        grade = _grade;
    }

    function getAge() public view returns (uint) {
        return age;
    }

    function getNat() public view returns (bool) {
        return brazilian;
    }

    function getStatus() public view returns (string memory) {

        if (grade == 0) {
            return "Zero";
        } else if (grade > 7) {
            return "Aprovado";
        } else {
            return "Reprovado";
        }
    }

}
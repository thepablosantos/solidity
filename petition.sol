// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

contract petition {
    // 3 names
    string[3] private names;
    //
    uint256 public nameCount;
    // status of the petition
    mapping(uint256 => string) public status;

    constructor() {
        nameCount = 0;
    }

    // register name
    function registerName(string memory _name) public {
        if (nameCount < 3){
            names[nameCount] = _name;
            nameCount++;
        }
    }

    function getName(uint256 _id) public view returns (string memory) {
        if (_id < 3) {
            return names[_id];
        }
        return "Error";
    }

    function petitionFull() public view returns (bool) {
        return nameCount >= 3;
    }

    function changeStatus(uint256 _id, string memory _status) public {
        if (_id < nameCount) {
            status[_id] = _status;
        }
    } 

}
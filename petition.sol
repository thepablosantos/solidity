// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

contract petition {
    
    string[3] private names;
    uint256 public nameCount;

    constructor() {
        nameCount = 0;
    }

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

} //
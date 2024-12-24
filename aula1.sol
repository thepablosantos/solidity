// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

contract person {

    string public name;
    uint public age;
    bool internal brazilian;

    constructor() {

        name = "Pablo";
        age = 31;
        brazilian = true;

    }

    function setNat(bool _brazilian) public {
        brazilian = _brazilian;
    }

    function getNat() public view returns (bool) {
        return brazilian;
    }

}

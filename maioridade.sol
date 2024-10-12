// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

contract Maioridade {

    string public age;

    function adultHood(uint _age) public {
        if (_age < 15) {
            age = "Child";
        } else if (_age < 18) {
            age = "adultHood";
        } else (_age <60) {
            age = "elderly"
        }
    }
}
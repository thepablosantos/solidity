//SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

contract bloco {
    function Tempo() public view returns (uint) {
        return block.timestamp;
    }
} //
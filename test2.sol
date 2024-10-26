//SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

contract dono {

    address public dono;

    constructor() {
        dono = msg.sender;
    }

}
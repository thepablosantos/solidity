//SPDX-License-Identifier: MIT

pragma solidity ^0.8.28;

import "@openzeppelin/contracts/token/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract NewCoin is ERC20, ownable {
    constructor() ERC20("NewCoin", "NCoin") {
        _mint(msg.sender, 1000000 * 10 ** decimals());
    }
}
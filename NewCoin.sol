//SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

mapping(address => bool) private blacklist;

event BlacklistUpdated(address indexed account, bool isBlackListed);

contract NewCoin is ERC20, ownable {
    constructor() ERC20("NewCoin", "NCoin") {
        _mint(10000 * 10 ** decimals());
    }
}

function addBlackList(address account) external onlyOwner {
    require(!Blacklist[account], "Address is already blacklisted");
    blacklist[account] = true;
    emit BlackllistUpdated(account, true);
}
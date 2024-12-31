// SPDX-License-Identifier: MIT

pragma solidity ^0.8.28;

// Importando os contratos ERC20 e Ownable da Openzeppelin
import "@openzeppelin/contracts/token/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

mapping(address => bool) private blacklist;
event BlacklistUpdated(address indexed account, bool isBlackListed);

// Definir nome do contrato, do token e simbolo, e mintar
contract NewCoin is ERC20, ownable {
    constructor() ERC20("Newcoin", "NCoin") {
        _mint(msg.sender, 10000000 * 10 ** decimals());
    }
}

function addToBlackList(address account) external onlyOwner {
    require(!Blacklist[account], "Address is already blacklisted");
    blacklist[account] = true;
    emit BlacklistUpdated(account, true);
}
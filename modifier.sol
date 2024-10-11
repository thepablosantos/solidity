// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

contract Pessoa {

    error NotAutorized(string msg, uint256 ammount);

    string public nome;
    uint public idade;
    address private owner;
    bool public brasileiro;

    constructor (string memory _nome, uint _idade, bool _brasileiro) {
        nome = _nome;
        idade = _idade;
        brasileiro = _brasileiro;
        owner = msg.sender;
    }

    modifier onlyOwner() {
        // require(msg.sender == owner, "Somente o dono pode visualizar");
        if (msg.sender != owner) {
            revert NotAutorized("Nao autorizado", 20);
        }
        _;
    }

    function setIdade(uint _novaIdade) public onlyOwner {
        idade = _novaIdade;
    }

    function setNacionality(bool _brasileiro) public {
        brasileiro = _brasileiro;
    }

}
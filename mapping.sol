// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract VerificarIdade {

    mapping(uint => string) public idade;

    function registrarIdade(uint _idade, string memory _nome) public {
        idade[_idade] = _nome;
    } //

}
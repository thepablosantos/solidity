// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract VerificarIdade {

    mapping (string => uint) private idade;

    function registrarIdade(string memory _nome, uint _idade) public {
        idade[_nome] = _idade;
    }

    function consultarIdade(string memory _nome) public view returns (uint) {
        return idade[_nome];
    }

}
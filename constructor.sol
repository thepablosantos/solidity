// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

contract pessoa {

    string public nome;
    uint private idade;
    bool internal brasileiro;
    address public endereco;

    constructor () {
        nome = "Pablo";
        idade = 31;
        brasileiro = true;
        endereco = 0x53bf7cf96a431d23B974F2884c5AC97F88c6785B;
    }

    function setName(string memory _nome) public {
        nome = _nome;
    }

    function setAge(uint _idade) public {
        idade = _idade;
    }

    function setNationality(bool _brasileiro) public {
        brasileiro = _brasileiro;
    }

    function getIdade() public view returns (uint) {
        return idade;
    }
} //
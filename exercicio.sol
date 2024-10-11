/* Desenvolver um SC que seja capaz de armazenar o nome, idade e nacionalidade de uma pessoa em três variáveis distintas.
O contrato deve dar a cada uma das variaveis, respectivamente, as visibilidades public, private e internal. 

// SPDX-License-Identifier: MIT

  pragma solidity ^0.8.9;

contract Person {

    string public nome = "Jeremias";
    uint private idade = 10;
    bool internal brasileiro = true;

    function myAge() public view returns (uint) {
        return idade;
    }

    function nacionalidade() public view returns (bool) {
        return brasileiro;
    }

}

// ---

/* pragma solidity ^0.8.9;

contract Person {

    string public nome;
    uint private idade;
    bool internal brasileiro;

    function myName(string memory _name) public {
        nome = _name;
    }

    function myAge(uint _age) private {
        idade = _age;
    }

    function nacionalidade(bool _nacionalidade) internal {
        brasileiro = _nacionalidade;
    }

} 

// ---

// SPDX-License Identifier: MIT

/* pragma solidity ^0.8.9;

contract Person {

    string public nome;
    uint private idade;
    bool internal brasileiro;

    constructor (string memory _nome, uint _idade, bool _brasileiro) {
        nome = _nome;
        idade = _idade;
        brasileiro = _brasileiro;
    }

} */

pragma solidity ^0.8.9;

contract Person {

    string public nome;
    uint public idade;
    bool internal brasileiro;
    address public owner;

    constructor (string memory _nome, uint _idade, bool _brasileiro) {
        nome = _nome;
        idade = _idade;
        brasileiro = _brasileiro;
        owner = msg.sender;
    }
    
}
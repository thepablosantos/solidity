// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

contract pessoa {

    // Definindo as variáveis do contrato
    string public nome; // Variável pública pode ser acessada por qualquer um
    uint private idade; // Variável privada só pode ser acessada dentro do contrato
    bool internal brasileiro; // Variável interna só pode ser acessada dentro do contrato e por contratos herdados
    address public endereco; // Endereço do contrato

    // Construtor do contrato
    constructor () {
        nome = "Pablo"; // Atribuindo o valor "Pablo" à variável nome
        idade = 31; // Atribuindo o valor 31 à variável idade
        brasileiro = true; // Atribuindo o valor true à variável brasileiro
        endereco = 0x53bf7cf96a431d23B974F2884c5AC97F88c6785B; // Atribuindo o endereço 0x53bf7cf96a431d23B974F2884c5AC97F88c6785B à variável endereco
    }

    // ---

    // Construtor do contrato com parâmetros, dessa forma é possível passar parâmetros para o contrato ao invés de declarar no construtor.
    // Os valores serão exigidos ao instanciar o contrato. Toda vez que colocamos os valores entre parênteses, quer dizer que precisamos passar os valores antes de instanciar o contrato.

    // constructor(string memory _nome, uint _idade, bool _brasileiro, address _endereco, string public immutable _genero) {
    //     nome = _nome;
    //     idade = _idade;
    //     brasileiro = _brasileiro;
    //     endereco = _endereco;
    //     genero = _genero;
    // }

    // ---

    // Função para alterar o nome
    function setName(string memory _nome) public {
        nome = _nome;
    }

    // Função para alterar a idade
    function setAge(uint _idade) public {
        idade = _idade;
    }

    // Função para alterar a nacionalidade
    function setNationality(bool _brasileiro) public {
        brasileiro = _brasileiro;
    }

    // Função para alterar o endereço
    function setAddress(address _endereco) public {
        endereco = _endereco;
    }

    // Função para obter o nome
    function getName() public view returns (string memory) {
        return nome;
    }

    // Função para obter a nacionalidade
    function getNationality() public view returns (bool) {
        return brasileiro;
    }

    // Função para obter o endereço
    function getAddress() public view returns (address) {
        return endereco;
    }

    // Função para obter a idade
    function getIdade() public view returns (uint) {
        return idade;
    }
} 
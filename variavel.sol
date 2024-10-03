// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9; // Especifica a versão do compilador Solidity que deve ser utilizada

// Define um contrato chamado 'Exemplovariavel'
contract Exemplovariavel {
    // Primeiro exemplo de variáveis
    uint8 public maxPermit = 255; // Declara uma variável pública do tipo uint8 com valor máximo de 255
    uint8 public testLimit; // Declara uma variável pública do tipo uint8
    int256 public negativo = -1; // Declara uma variável pública do tipo int256 com valor -1
    uint256 public numero; // Declara uma variável pública do tipo uint256
    int256 public numeroNegativo; // Declara uma variável pública do tipo int256

    // Função para inserir um número máximo uint8
    // '_numero' é passado como argumento para definir 'testLimit'
    function inserirMaxuint(uint8 _numero) external {
        testLimit = _numero;
    }

    // Função para inserir um número uint256
    // '_numero' é passado como argumento para definir 'numero'
    function inserirNumero(uint256 _numero) external {
        numero = _numero;
    }

    // Função para calcular a diferença entre um número negativo e o número inserido
    // '_numero' é passado como argumento para calcular a diferença com 'negativo'
    function calcularNegativo(int256 _numero) external view returns (int256) {
        int256 somaDosNegativos = negativo - _numero; // Calcula a diferença entre 'negativo' e '_numero'
        return somaDosNegativos; // Retorna a diferença calculada
    }

    // Variáveis públicas adicionais
    bool public permissao; // Declara uma variável pública do tipo bool
    address public contaRegistrada; // Declara uma variável pública do tipo address
    string public nome; // Declara uma variável pública do tipo string
    bytes public MeusBytes; // Declara uma variável pública do tipo bytes

    // Função para mudar a permissão
    // '_trueouFalse' é passado como argumento para definir 'permissao'
    function mudarpermissao(bool _trueouFalse) external {
        permissao = _trueouFalse;
    }

    // Função para registrar um endereço
    // '_endereco' é passado como argumento para definir 'contaRegistrada'
    function RegistrarEndereco(address _endereco) external {
        contaRegistrada = _endereco;
    }

    // Função para registrar o endereço do chamador e um nome
    // '_meunome' é passado como argumento para definir 'nome'
    // 'msg.sender' é o endereço que chama a função
    function registrarmeuendereco(string memory _meunome) external {
        contaRegistrada = msg.sender; // Define 'contaRegistrada' como o endereço do chamador
        nome = _meunome; // Define 'nome' como '_meunome'
    }
}
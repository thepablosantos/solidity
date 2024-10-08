// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.4;

contract funcoesExemplo {
    // Variáveis globais públicas
    uint256 public numero;
    string public nome;
    string public mensagem;

    // Variável não pública para acessarmos via funções
    uint256 valor; // Não é visível no remix

    // Função interna só pode ser chamada pelo contrato
    function divNum(uint256 _numerodiv) internal {
        numero = _numerodiv; // Armazena o número original na variável pública 'numero'
        // Se necessário, realizar a operação de divisão, mas não há uso explícito no estado atual
        // uint256 divNumero = _numerodiv / 2; // Essa linha foi removida pois a variável não é utilizada
    }

    // Função pública pode ser chamada por conta EOAS ou contrato
    function setMsg(string memory _msg) public {
        mensagem = _msg; // Armazena a mensagem passada na variável pública 'mensagem'
    }

    // Funções externas são as que só podem ser chamadas por contas EOAS
    function setNomeNum(string memory _meunome, uint256 _numero) external {
        nome = _meunome; // Armazena o nome passado na variável pública 'nome'
        divNum(_numero); // Chama a função interna 'divNum' com o número passado
        setMsg("Chamou pelo contrato"); // Chama a função pública 'setMsg' com uma mensagem fixa
    }

    // Vamos setar aqui o valor
    function setValor(uint256 _valor) external {
        valor = _valor; // Armazena o valor passado na variável privada 'valor'
    }

    // Retorna o valor setado acima o view não modifica o estado do contrato
    function getValor() external view returns (uint256) {
        return valor; // Retorna o valor armazenado na variável privada 'valor'
    }

    // O pure ela nem lê e nem escreve no estado do contrato
    function multiplicar(uint256 x, uint256 y) external pure returns (uint256) {
        uint256 valorMultiplicacao = x * y; // Calcula a multiplicação dos dois números passados
        return valorMultiplicacao; // Retorna o resultado da multiplicação
    }

    // Função que permite enviarmos valores pelo contrato
    function payEther() external payable { }
}

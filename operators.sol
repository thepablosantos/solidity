// SPDX-License-Identifier: MIT
// Aula operators
pragma solidity ^0.8.9; // Especifica a versão do compilador Solidity que deve ser utilizada

contract operators {
    // Declara uma variável de estado chamada 'valor' do tipo uint256
    uint256 valor;

    // Função pública e pura que calcula a média de dois números inteiros e retorna o resultado
    function calcularMedia(uint256 a, uint256 b) public pure returns (uint256) {
        uint256 media = (a + b) / 2; // Calcula a média dos dois números
        return media; // Retorna a média calculada
    }

    // Função pública e pura que multiplica a soma de dois números inteiros por 2 e retorna o resultado
    function calcularMulti(uint256 a, uint256 b) public pure returns (uint256) {
        uint256 media = (a + b) * 2; // Multiplica a soma dos dois números por 2
        return media; // Retorna o resultado da multiplicação
    }

    // Função pública e pura que verifica se dois valores booleanos são ambos verdadeiros (AND lógico)
    function verificarVerdadeiro(bool a, bool b) public pure returns (bool) {
        bool resultado = a && b; // Realiza a operação AND lógico
        return resultado; // Retorna o resultado da operação
    }

    // Função pública e pura que verifica se pelo menos um dos valores booleanos é verdadeiro (OR lógico)
    function verificarcondicional(bool a, bool b) public pure returns (bool) {
        bool resultado = a || b; // Realiza a operação OR lógico
        return resultado; // Retorna o resultado da operação
    }

    // Função pública e pura que verifica se o primeiro número é maior que o segundo
    function verificarMaior(uint256 a, uint256 b) public pure returns (bool) {
        bool resultado = a > b; // Verifica se 'a' é maior que 'b'
        return resultado; // Retorna o resultado da comparação
    }

    // Função pública e pura que verifica se dois números são iguais
    function verificarIgual(uint256 a, uint256 b) public pure returns (bool) {
        bool resultado = a == b; // Verifica se 'a' é igual a 'b'
        return resultado; // Retorna o resultado da comparação
    }

    // Função pública e pura que verifica se dois números são diferentes
    function verificarDiferente(uint256 a, uint256 b) public pure returns (bool) {
        bool resultado = a != b; // Verifica se 'a' é diferente de 'b'
        return resultado; // Retorna o resultado da comparação
    }

    // Função pública que define o valor da variável de estado 'valor' com base em uma condição
    function setValor(uint256 novoValor) public {
        if (novoValor >= 10) { // Se 'novoValor' for maior ou igual a 10
            valor = novoValor; // Define 'valor' como 'novoValor'
        } else { // Caso contrário
            valor = 0; // Define 'valor' como 0
        }
    }

    // Função pública que retorna o valor da variável de estado 'valor'
    function getValor() public view returns (uint256) {
        return valor; // Retorna o valor armazenado na variável 'valor'
    }
}

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Arrays {

    string[] public textos;

    function novoElemento(string memory novoTexto) public {
        textos.push(novoTexto);
    }

    function removeElemento() public {
        textos.pop();
    }

}
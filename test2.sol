//SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

constructor () {

}

contract Enquanto {

    function repeat() public pure returns (uint) {

        uint contagem;
        uint soma;

        while (contagem < 10) {
            contagem++;

            if (contagem == 5) {
                break;
            }
            soma++
        }

    return soma;

    }

} 
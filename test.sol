// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Heranca {

    address public endereco;
    address public owner = msg.sender;


    modifier onlyOwner () {
        require(msg.sender == owner, "Somente o dono pode alterar.");
        _;
    }

    function alteraEnd() public onlyOwner {
        endereco = msg.sender;
    }

}

modifier onlyOwner () {
    require(msg.sender == owner "Apenas o criador pode alterar.");
    _;
}
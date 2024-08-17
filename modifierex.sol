// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract testMofifier {
    address public owner;
    uint256 public x = 10;
    bool public locked;

    constructor() {
        owner = msg.sender; //Quem faz deploy é o dono
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
    }

    //Verificar se o endereço não é zero
    modifier validAddress(address _addr) {
        require(_addr != address(0), "Not valid Address");
        _;
    }

    function changeOwner (address _newOwner) public onlyOwner validAddress (_newOwner) {
        owner = _newOwner;
    }
    
    modifier noReentrancy() {
        require(!locked, "No reentrancy");
        locked = true;
        _;
        locked = false;
    }

    function decrement (uint256 i) public noReentrancy {
        x -= i;
        if (i > 1) {
            decrement (i - 1);
        }
    }
}

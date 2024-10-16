// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Crowdfunding {

    address public owner;
    address[] public funders;
    mapping(address => uint256) public addressToAmountFunded;

    event NewFunding(address _from, uint256 _value);

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Withdraw only by owner.");
        _;
    }

    function fund() public payable {
        require(msg.value > 0, "You need to send some ether");
        
        if (addressToAmountFunded[msg.sender] == 0) {
            funders.push(msg.sender);
        }

        addressToAmountFunded[msg.sender] += msg.value;
        emit NewFunding(msg.sender, msg.value);
    } 

    function withdraw() public onlyOwner {
        uint256 totalBalance = address(this).balance;


        for (uint256 i = 0; i < funders.length; i++) {
            address addr = funders[i];
            addressToAmountFunded[addr] = 0;
        }

        payable(msg.sender).transfer(totalBalance);
    }
}
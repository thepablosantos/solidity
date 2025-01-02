// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

contract CrowdFunding {

    address public owner;
    address[] public funders;
    mapping(address => uint256) public addressToAmountFundes;
    event NewFunding(address _from, uint256 _value);

    constructor() {
        owner = msg.sender;
    }

    function fund() public payable {
        funders.push(msg.sender);

        addressToAmountFundes[msg.sender] += msg.value;

        emit NewFunding(msg.sender, msg.value);
    }

    function withdraw() public payable {
        require(msg.sender == owner, "Withdraw only by contract owner!");
        payable(msg.sender).transfer(address(this).balance);

        for(uint256 i = 0; i < funders.length; i++){
            address addr = funders[i];

            addressToAmountFundes[addr] = 0;
        }

        funders = new address[](0);
    }


}
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract CrowdFunding {
    address public owner;
    uint256 public totalFunds;

    mapping(address => uint256) public addressToAmountFunded;

    event Funded(address indexed funder, uint256 amount);
    event Withdrawn(address indexed withdrawer, uint256 amount);

    modifier onlyOwner() {
        require(msg.sender == owner, "Not the owner");
        _;
    }

    modifier hasFunds() {
        require(addressToAmountFunded[msg.sender] > 0, "No funds to withdraw");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    // Function to fund the contract
    function fund() public payable {
        require(msg.value > 0, "Fund amount must be greater than 0");

        addressToAmountFunded[msg.sender] += msg.value;
        totalFunds += msg.value;

        emit Funded(msg.sender, msg.value);
    }

    // Function to withdraw funds
    function withdraw() public hasFunds {
        uint256 amount = addressToAmountFunded[msg.sender];

        // Reset the user's balance before transferring to prevent re-entrancy attacks
        addressToAmountFunded[msg.sender] = 0;
        totalFunds -= amount;

        payable(msg.sender).transfer(amount);

        emit Withdrawn(msg.sender, amount);
    }

    // Function to check contract balance
    function getContractBalance() public view returns (uint256) {
        return address(this).balance;
    }

    // Function to retrieve the amount funded by an address
    function getAmountFunded(address _user) public view returns (uint256) {
        return addressToAmountFunded[_user];
    }
}

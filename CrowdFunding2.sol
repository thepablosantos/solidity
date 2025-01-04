// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

/**
 * @title CrowdFunding
 * @dev A simple crowdfunding contract that allows users to fund and the owner to withdraw funds.
 */
contract CrowdFunding {
    /// @notice Address of the contract owner
    address public immutable owner;

    /// @notice Minimum amount required to fund the contract
    uint256 public constant MINIMUM_FUND = 0.01 ether;

    /// @notice Maps funder addresses to the amount they have funded
    mapping(address => uint256) public addressToAmountFunded;

    /// @dev List of all funders who have contributed
    address[] private funders;

    /// @dev Emitted when a new funding occurs
    /// @param funder The address of the funder
    /// @param amount The amount funded
    event NewFunding(address indexed funder, uint256 amount);

    /// @dev Emitted when the owner withdraws all funds
    /// @param owner The address of the owner
    /// @param amount The total amount withdrawn
    event Withdrawal(address indexed owner, uint256 amount);

    /**
     * @dev Sets the deployer as the owner of the contract.
     */
    constructor() {
        owner = msg.sender;
    }

    /**
     * @notice Ensures only the contract owner can call the function.
     */
    modifier onlyOwner() {
        require(msg.sender == owner, "Only contract owner can call this!");
        _;
    }

    /**
     * @notice Allows users to fund the contract with ETH.
     * @dev Adds the sender to the funders list if they are funding for the first time.
     * Emits a {NewFunding} event.
     */
    function fund() external payable {
        require(msg.value >= MINIMUM_FUND, "Minimum funding amount not met!");

        // Update storage only when necessary
        if (addressToAmountFunded[msg.sender] == 0) {
            funders.push(msg.sender);
        }

        addressToAmountFunded[msg.sender] += msg.value;

        emit NewFunding(msg.sender, msg.value);
    }

    /**
     * @notice Allows the owner to withdraw all funds from the contract.
     * @dev Transfers the contract's balance to the owner and resets funders' data.
     * Emits a {Withdrawal} event.
     */
    function withdraw() external onlyOwner {
        uint256 contractBalance = address(this).balance;
        require(contractBalance > 0, "No funds available for withdrawal!");

        // Transfer funds to the owner
        payable(owner).transfer(contractBalance);
        emit Withdrawal(owner, contractBalance);

        // Reset funders' data
        for (uint256 i = 0; i < funders.length; i++) {
            address funder = funders[i];
            addressToAmountFunded[funder] = 0;
        }
        delete funders; // Efficiently clear the funders array
    }

    /**
     * @notice Retrieves the list of all funders.
     * @return An array of funder addresses.
     */
    function getFunders() external view returns (address[] memory) {
        return funders;
    }
}

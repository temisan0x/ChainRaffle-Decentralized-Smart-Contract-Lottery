// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

/**
 * @title Raffle Smart Contract
 * @author Temisan Momodu
 * @notice This contract implements a sample raffle using Chainlink VRFv2 for randomness.
 * @dev Make sure to deploy with the required Chainlink VRF configuration.
 */

contract Raffle {
    uint256 private immutable i_entranceFee;

    constructor(uint256 entranceFee) {
        i_entranceFee = entranceFee;
    }

    function enterRaffle() public {}

    function pickWinner() public {}

    /**Getter function */
    function getEntranceFee() external view returns(uint256) {
        return i_entranceFee;
    }
}

/**
 * @notice
 * Constructor sets the entrance fee when the contract is deployed
 * The getter function `getEntranceFee` provides transparency, allowing external parties
 * to inspect the current state of the contract by retrieving the entrance fee value.
 * @param No parameters required for this function.
 * @return The entrance fee, a key parameter for understanding the contract's current state.
 * @inheritdoc Copies all missing tags from the base function (must be followed by the contract name)
 */
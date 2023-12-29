// Order of Layout

// Contract elements should be laid out in the following order:

//     Pragma statements

//     Import statements

//     Events

//     Errors

//     Interfaces

//     Libraries

//     Contracts

// Inside each contract, library or interface, use the following order:

//     Type declarations

//     State variables

//     Events

//     Errors

//     Modifiers

//     Functions

// Order of Functions
//     constructor

//     receive function (if exists)

//     fallback function (if exists)

//     external

//     public

//     internal

//     private

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

/**
 * @title Raffle Smart Contract
 * @author Temisan Momodu
 * @notice This contract implements a sample raffle using Chainlink VRFv2 for randomness.
 * @dev Make sure to deploy with the required Chainlink VRF configuration.
 */

contract Raffle {
    error Raffle__NotEnoughEthSent();

    uint256 private immutable i_entranceFee;
    address payable[] private s_players;

    /**Events */
    event EnteredRaffle(address indexed player);

    constructor(uint256 entranceFee) {
        i_entranceFee = entranceFee;
    } 

    function enterRaffle() external payable{
        if(msg.value != i_entranceFee) {
            revert Raffle__NotEnoughEthSent();
        }

        s_players.push(payable(msg.sender));
        emit EnteredRaffle(msg.sender);
    }

    
   
}
/* @notice
 * Constructor sets the entrance fee when the contract is deployed
 * The getter function `getEntranceFee` provides transparency, allowing external parties
 * to inspect the current state of the contract by retrieving the entrance fee value.
 * @param No parameters required for this function.
 * @return The entrance fee, a key parameter for understanding the contract's current state.
 * @inheritdoc Copies all missing tags from the base function (must be followed by the contract name)
 */

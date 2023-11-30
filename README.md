# Provably Random Raffle Contracts

## About

Welcome to the world of decentralized lotteries powered by smart contracts! This repository contains the code for creating a provably random smart contract lottery system.

### Features

1. **Ticket Entry System:**
   - Users can participate by purchasing tickets.
   - Ticket fees contribute to the jackpot for the lucky winner during the draw.

2. **Automated Draw:**
   - After a specified period (X), the lottery will autonomously conduct a draw.
   - The draw process is handled programmatically for transparency and fairness.

3. **Chainlink Integration:**
   - Leveraging Chainlink VRF for Randomness:
     - Ensures a tamper-proof and verifiable random selection of the winner.
   - Chainlink Automation for Time-Based Trigger:
     - Effortlessly manages time-based events, ensuring a seamless and secure draw process.

### How It Works

1. **Ticket Purchase:**
   - Users initiate participation by paying for tickets, contributing to the prize pool.

2. **Draw Mechanism:**
   - The lottery autonomously selects a winner after the predefined time period.
   - Chainlink VRF guarantees randomness in the selection process.

3. **Chainlink Integration:**
   - Utilizing Chainlink VRF for secure and unbiased random number generation.
   - Chainlink Automation manages the timing aspect, ensuring the draw occurs as scheduled.

Feel free to explore the code and adapt it to your needs. Happy coding, and may the odds be ever in your favor!

**Note:** Ensure you have the necessary dependencies, including Chainlink VRF and Chainlink Automation, set up before deploying the smart contract.


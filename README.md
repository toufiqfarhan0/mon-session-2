# Simple Task Manager Contract

This repository contains a simple Solidity smart contract for managing tasks on the Monad blockchain.

## Features

- **Task Creation**: Users can create tasks with a description.
- **Task Completion**: Users can mark their tasks as completed.
- **Data Ownership**: Tasks are stored mapped to the user's address.
- **Events**: Emits events for task creation and completion.
- **Access Control**: Includes an owner modifier example.

## Contract Details

- **Contract Name**: TaskManager
- **Solidity Version**: ^0.8.24
- **License**: MIT

## Deployment

### Deployed Address (Monad Testnet)

`0xF2B06F9929ef242e486FF76eCBA0Fc140ED0cB11`

### Explorer Link

`https://monad-testnet.socialscan.io/address/0xf2b06f9929ef242e486ff76ecba0fc140ed0cb11/`

## How to Use

1. **Create Task**: Call `createTask` with a string description.
2. **Complete Task**: Call `completeTask` with the index of the task.
3. **View Tasks**: Use `userTasks` mapping with your address and an index.

## Deployment Instructions

1. Open [Remix IDE](https://remix.ethereum.org/).
2. Create a new file `SimpleTask.sol` and paste the contract code.
3. Go to the **Solidity Compiler** tab and compile.
4. Go to **Deploy & Run Transactions**.
5. Select **Injected Provider - MetaMask** (ensure you are connected to Monad Testnet).
6. Click **Deploy**.
7. Confirm the transaction in your wallet.

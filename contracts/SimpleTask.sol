// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract TaskManager {
    // 1. State Variables & Data Types
    address public owner;
    uint256 public taskCount;

    // 2. Structs to group data
    struct Task {
        string description;
        bool isCompleted;
    }

    // 3. Mappings & Arrays
    // Maps a user address to an array of their tasks
    mapping(address => Task[]) public userTasks;

    // Events for on-chain tracking
    event TaskCreated(address indexed user, string description);
    event TaskCompleted(address indexed user, uint256 index);

    constructor() {
        owner = msg.sender;
    }

    // 4. Modifiers
    modifier onlyOwner() {
        require(msg.sender == owner, "Not the contract owner");
        _;
    }

    // 5. Functions
    function createTask(string memory _description) public {
        userTasks[msg.sender].push(Task(_description, false));
        taskCount++;
        emit TaskCreated(msg.sender, _description);
    }

    function completeTask(uint256 _index) public {
        require(_index < userTasks[msg.sender].length, "Task does not exist");
        userTasks[msg.sender][_index].isCompleted = true;
        emit TaskCompleted(msg.sender, _index);
    }

    // View function to get task count for a user
    function getUserTaskCount(address _user) public view returns (uint256) {
        return userTasks[_user].length;
    }
}
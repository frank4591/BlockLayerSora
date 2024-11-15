// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./BaseTask.sol";

contract TaskManagement is BaseTask {
    function createTask(uint reward) public payable {
        require(msg.value == reward, "reward must be deposited");

        Task storage newTask = tasks[taskCounter];
        newTask.id = taskCounter;
        newTask.creator = msg.sender;
        newTask.reward = reward;
        newTask.isActive = true; //should be set for specific time eventually

        emit TaskCreated((taskCounter), msg.sender, reward);
        taskCounter++;
    }

    modifier onlyTaskCreator(uint taskId) {
        require(tasks[taskId].creator == msg.sender, "Not the task creator");
        _;
    }

    modifier isCreatorRole(uint reward) {
        require(
            msg.value >= CREATOR_STAKE,
            "Insufficient stake for task creation"
        );
        require(
            msg.value == reward + CREATOR_STAKE,
            "Reward and stake must be deposited"
        );
    }

    modifier onlyActiveTask(uint taskId) {
        require(tasks[taskId].isActive, "Task is not active");

        _;
    }
}

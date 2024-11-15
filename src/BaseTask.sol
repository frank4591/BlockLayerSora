//// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

abstract contract BaseTask {
    struct Task {
        uint id;
        address creator;
        uint reward;
        uint totalstaked;
        bool isActive;
        address[] trainers; //we can add validators and aggregrator as well later
        mapping(address => uint) stakes;
        mapping(address => bytes) modelUpdates;
    }

    uint public taskCounter;
    mapping(uint => Task) public tasks;

    // Stake requirements for different roles
    //can be changed by the contract owner
    uint public CREATOR_STAKE = 5 ether;
    uint public AGGREGATOR_STAKE = 3 ether;
    uint public TRAINER_STAKE = 2 ether;

    event TaskCreated(uint taskID, address indexed creator, uint rewards);
    event ModelSubmitted(
        uint taskID,
        address indexed trainer,
        bytes modelUpdates
    );
    event AggregrationComplete(uint taskID, bytes aggregrationModel);
    event RewardDistributed(uint taskID, address indexed trainer, uint reward);
}

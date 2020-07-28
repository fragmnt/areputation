// SPDX-License-Identifier: Apache 2.0

pragma solidity ^0.6.9;

contract Kudos {

    uint256 vote;
    address public contributor;
    address public organization;

    struct Task {
        uint256 task_id;
        address doer;
        bytes24 description;
        bytes16 name;
        uint32 timestamp;
        address organization;
        address application;
    }

    struct Vote {
        uint256 id;
        uint256 vote_id;
        uint32 number_of;
        address voter;
    }

    mapping(uint256 => Task) public tasks;

    constructor(address _contributor) public {
        organization = msg.sender;
        contributor = _contributor;
    }

    function submit(uint256 task_id) public view returns (uint) {
        return tasks[task_id].task_id;
    }
}
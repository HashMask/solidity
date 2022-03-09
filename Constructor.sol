// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;

contract Constructor {
    address public owner;
    uint public createdAt;

    constructor() {
        owner = msg.sender;
        createdAt = block.timestamp;
    }
}
// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;

contract Events {
    event Log(address indexed addr, string message);
    event anotherLog();

    function fireEvents() public {
        emit Log(msg.sender, "Hello from Log 1");
        emit Log(msg.sender, "Hi from Log 2");
        emit anotherLog();
    }
}
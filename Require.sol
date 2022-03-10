// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;

contract Account {
    uint public balance = 1;
    uint public constant MAX_INT = 2 ** 256 - 1;

    function deposit(uint _amount) public {
        uint oldBalance = balance;
        uint newBalance = balance + _amount;
        require(newBalance >= balance, "Overflow");
        balance = newBalance;
        assert(balance >= oldBalance);
    }

    function withdraw(uint _amount) public {
        uint oldBalance = balance;
        require(balance >= _amount, "Underflow");
        balance -= _amount;
        assert(balance <= oldBalance);
    }
}
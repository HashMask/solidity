// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;

contract ReentrancyModiferFunction {
    uint public x = 10;
    bool locked;

    modifier reentrancycheck() {
        require(!locked, "Function is Locked!");
        locked = true;
        _;
        locked = false;
    }

    function decrement(uint i) public reentrancycheck {
        if(x >= i) {
            x -= i;
            if(i > 1) {
                decrement(i - 1);
            }
        }
    }
}
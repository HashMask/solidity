// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;

contract RunInLoop {
    uint public count;

    function manyTimes(uint number) public returns (uint) {
        for(uint i=0; i<number; i++) {
            count++;
        }
        return count;
    }
}
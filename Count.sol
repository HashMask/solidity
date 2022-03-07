// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;

contract Count {
    uint public count;
    int a;

    function get() public view returns (uint) {
        return count;
    }

    function increment() public {
        count += 1;
    }

    function decrement() public {
        if(count > 0) {
            count -= 1;
        }  
        
    }

    function intMinValue() public pure returns (int) {
        return type(int).min;
    }

    function intMaxValue() public pure returns (int) {
        return type(int).max;
    }

    function uintMinValue() public pure returns (uint) {
        return type(uint).min;
    }

    function uintMaxValue() public pure returns (uint) {
        return type(uint).max;
    }
}
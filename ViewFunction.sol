// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;

contract ViewFunction {
    uint8 public x = 1;

    /// View functions do not modify State
    function addToX(uint8 y) public view returns (uint) {
        return x + y;
    }

    /* function updateX(uint8 y) public view returns (uint) {
       return  x += y;
    } */

    function foo() public {

    }

    /*
        function invalidViewFunc() public view {
        foo();
    } */
}
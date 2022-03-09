// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;

contract PureFunction {
    uint public x = 1;

    function addToX(uint _y) public view returns (uint) {
        return x + _y;
    }

    function add(uint _x, uint _y) public pure returns (uint) {
        return _x + _y;
    }

    function foo() public {

    }

    /*  function invalidPureFunction() public pure {
        foo();
    } */

}
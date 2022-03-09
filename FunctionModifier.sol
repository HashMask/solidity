// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;

contract FunctionModifier {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can do this operation");
        _;
    }

    modifier validAddress(address _address) {
        require(_address != address(0), "Cannot use blackhole address");
        _;
    }

    function changeOwner(address _newOwner) public onlyOwner validAddress(_newOwner) {
        owner = _newOwner;
    }

}
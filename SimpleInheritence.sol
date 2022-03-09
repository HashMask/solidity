// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;

contract Parent {
    string public name;

    constructor(string memory _name) {
        name = _name;
    }

    //virtual allows function to be overridden
    function getContractName() public virtual pure returns (string memory) {
        return "Parent";
    }
}

contract Child is Parent {
    constructor(string memory _name) Parent(_name) {
        name = _name;
    }

    // Method overriding
    function getContractName() public override pure returns (string memory) {
        return "Child";
    }

    function getParentContractName() public pure returns (string memory) {
        return super.getContractName();
    }
}
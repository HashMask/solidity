// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;

contract A {
    address public addr = 0x0000000000000000000000000000000000000001;

    function getAddress() public view returns (address) {
        return addr;
    }
}

contract B is A {
    constructor() {
        addr = 0x0000000000000000000000000000000000000002;
    }
}
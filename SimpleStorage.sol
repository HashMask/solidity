// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;

contract SimpleStorage {
    string public text;

    function set(string memory _text) public {
        text = _text;
    }

    function get() public view returns (string memory) {
        return text;
    }
}

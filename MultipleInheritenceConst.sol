// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;

contract X {
    event LogX(string message);
    string public name;
    constructor(string memory _name) {
        name = _name;
        emit LogX(_name);
    }
}

contract Y {
    event LogY(string message);
    string public text;
    constructor(string memory _text) {
        text = _text;
        emit LogY(_text);
    }
}

contract Z is X, Y {
    constructor(string memory _name, string memory _text) X(_name) Y(_text) {

    }
}
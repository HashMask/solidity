// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;

contract A {
    event Log(string message);
    string public name;
    constructor(string memory _name) {
        emit Log("A constructor is called");
        name = _name;
    }
    function foo() public virtual returns (string memory) {
        emit Log("A.foo is called.");
        return "A";
    }
}

contract B {
    event Logb(string message);
    function foo() public virtual returns (string memory) {
        emit Logb("B.foo is called.");
        return "B";
    }
}

contract C is A, B {
    constructor(string memory _name) A(_name) {
        emit Log("C constructor is called");
        name = _name;
    }

    function foo() public override(A, B) returns (string memory) {
        emit Log("C.foo is called");
        super.foo();
        return "C";
    }
}
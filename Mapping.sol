// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;

contract Mapping {
    mapping(uint8 => address) public myMap;

    function getValue(uint8 _key) public view returns (address) {
        return myMap[_key];
    } 

    function setKeyValue(uint8 _key, address _value) public {
        myMap[_key] = _value;
    }

    function remove(uint8 _key) public {
        delete myMap[_key];
    }
}
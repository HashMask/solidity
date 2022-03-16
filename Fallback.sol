// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;

contract Fallback {
    event Log(uint gas);

    fallback() external payable{
        // send/transfer forwards 2300 gas to fallback function
        // call forwards all of the gas
        emit Log(gasleft());
    }

    receive() external payable{}

    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
}

contract SendToFallback {
    function transferToFallback(address payable _to) public payable {
        _to.transfer(msg.value);
    }

    function Callback(address payable _to) public payable {
        (bool sent, ) = _to.call{value: msg.value}("");
        require(sent, "Failed to send Ether");
    }
}
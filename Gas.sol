// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;

contract Gas {
    uint public i = 0;

    uint internal j = 0;
    
    function testGasRefund() public view returns (uint) {
        return tx.gasprice;
    }

    function forever() public {
        while(j <= 20) {
            i += 1;
            j +=1;
        }
    }
}
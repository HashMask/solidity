// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;

contract Arrays {
    uint public constant ARRAY_LIMIT = 100;
    uint[] public dynamicArray;
    uint[] public dynamicArrayInitialisation = [1,2,3];
    uint[10] public fixedSizeArray;
    uint[2][2] public multiDimensionalArray;

    function push(uint8 element) public {
       dynamicArray.push(element);
    }

    function pop() public {
        dynamicArray.pop();
    }

    function removeByIndex(uint8 index) public {
        delete dynamicArray[index];
    }
}

contract CompactArray {
    uint[] public myArray;

    function removeByIndex(uint8 index) public {
        myArray[index] = myArray[myArray.length - 1];
        myArray.pop();
    }

    function test() public {
        myArray.push(1);
        myArray.push(2);
        myArray.push(3);
        myArray.push(4);

        removeByIndex(2);

        assert(myArray.length == 3);
        assert(myArray[0] == 1);
        assert(myArray[1] == 2);
        assert(myArray[2] == 4);
    }
}
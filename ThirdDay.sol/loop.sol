// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.15;

contract loops {
    uint[] arr;
    uint public element;

    function push() public {
        for(uint i=0; i<5; i++) {
            arr.push(i);
        }
    }

    function getElement(uint _index) public returns(uint) {
        element = arr[_index];
        return element;
    }
}
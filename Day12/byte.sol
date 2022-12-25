// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.15;

contract bytess {
    
   bytes public b1 = "abc";

    function pushElement() public {
        b1.push("d");
    }

    function getElement(uint _index) public view returns(bytes1){
        return b1[_index];
    }
} 
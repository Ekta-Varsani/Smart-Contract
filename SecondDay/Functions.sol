// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.15;

contract functions {
    uint myUint;
    
    function setValue(uint _myUint) public{
        myUint = _myUint;
    }

    function getVaue() public view returns(uint){
        return myUint;
    }
}
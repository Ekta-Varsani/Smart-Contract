//SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

contract functionModifier {
    address public owner;
    uint public x = 10;
    bool public locked;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "You are not allowed!!");
        _;
    }

    modifier validAddress(address _addr) {
        require(_addr != address(0), "add not valid");
        _;
    }

    function chnageOwner(address newOwner) public onlyOwner validAddress(newOwner){
        owner = newOwner;
    }

    modifier noReEnterancy() {
        require(!locked, "No ReEnterancy!!");
        locked = true;
        _;
        locked = false;
    }

    function decrement(uint i) public noReEnterancy{
        x -= i;

        if (i > 1) {
            decrement(i - 1);
        }
    }

}
// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.15;

contract maxNum {
    uint a;
    uint b;
    uint c;
    uint public max;

    function findMax(uint _a, uint _b, uint _c) public returns(uint){
     
        if(_a > _b) {
            if(_a > _c) {
                max = _a;
            } else {
                max = _c;
            }
        }  else {
            if(_b > _c) {
                max = _b;
            } else {
                max = _c;
            }
        }
         return max;
    }
}
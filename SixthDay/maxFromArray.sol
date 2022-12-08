// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.15;

contract maxFromArray {
   uint[] arr;
   uint public max;

   function push() public {
       for(uint i=0; i<5; i++) {
           arr.push(i);
       }
   }

   function maxval() public returns(uint) {
       max = arr[0];
       for(uint i=0; i<arr.length; i++) {
           if (max > arr[i]) {
               max = max;
           } else {
               max = arr[i];
           }
       }
       return max;
   }
}
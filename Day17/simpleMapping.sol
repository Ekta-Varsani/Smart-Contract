// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.15;

contract simpleMapping {
  mapping(uint=>string) public data;

   function setValue(uint _key,string memory _value) public{
       data[_key] = _value; 
   }
} 

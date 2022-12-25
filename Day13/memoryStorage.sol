// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.15;

contract memoryStorage {
    
 string[] public students = ['ekta','dipti','naisargee'];

   function memoryy() public view{
       string[] memory s1 = students;
       s1[0] = 'rohit';
   }
   function storagee() public {
       string[] storage s1 = students;
       s1[0] = 'rohit'; 
   }
} 

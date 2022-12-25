// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.15;

contract mapWithStruct {
  struct student {
        string name;
        uint standard;
    }
    mapping (uint => student) public studentData;

    function set(uint _rollNo , string memory _name ,uint _standard) public {
        studentData[_rollNo] = student(_name,_standard);
    }
} 

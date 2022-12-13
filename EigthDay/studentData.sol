// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.15;

contract studentData {
   struct Student {
        string name;
        string subject;
        uint mark;
    }

    mapping(address => Student) public result;
    address[] public arr;
    string public visibility;
    
    function addValues(string memory _name, string memory _sub, uint _mark) public { 
        Student memory student = Student(_name, _sub, _mark);
        result[msg.sender] = student;
        arr.push(msg.sender);
    }

    function checkAvaibility(address _addr) public returns(string memory){
        for(uint i=0; i<arr.length; i++) {
            if (arr[i] == _addr) {
                visibility = 'yeahh! exists';
            } else {
                visibility = 'Oops! not exists';
            }
        }

        return visibility;
    }

}
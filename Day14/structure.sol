// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.15;

struct student {
    uint rollNo;
    string name;
}

contract structEample {
    student public s1;
    
constructor(uint _rollNo,string memory _name){
    s1.rollNo = _rollNo;
    s1.name = _name;
}

    function change(uint _rollNo, string memory _name) public{
        student memory new_student = student({
            rollNo:_rollNo,
            name:_name
        });
        s1 = new_student;
    } 

    // OR

    //  function change(uint _rollNo, string memory _name) public{
    //     s1.rollNo = _rollNo;
    //     s1.name = _name;
    // } 


} 

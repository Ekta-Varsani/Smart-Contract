// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.15;

contract map2 {
  mapping (address => uint) public mapData;

    
    function set(address _addr, uint _i) public {
        mapData[_addr] = _i;
    }
    
    function get(address _addr) public view returns (uint) {
        return mapData[_addr];
    }
    
    function remove(address _addr) public {
    delete mapData[_addr];
    
    }
} 

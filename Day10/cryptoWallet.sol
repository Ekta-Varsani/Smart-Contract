// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.15;

contract wallet {
   struct Crypto {
       string coin;
       uint amount;
    //    crypto[] user;
   }

   mapping(address => Crypto) public userCrypto;
    address[] public arr;

    function addCrypto(string memory _coin, uint _amount) public { 
        Crypto memory crypto = Crypto(_coin, _amount);
        userCrypto[msg.sender] = crypto;
        arr.push(msg.sender);
    }

}
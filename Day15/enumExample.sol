// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.15;

contract enumExample {
   enum user {allowed,notAllowed,wait}

   user public u1 = user.allowed;

} 

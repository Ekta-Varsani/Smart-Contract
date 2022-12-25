// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.15;

contract hello {
    string public str;

    function setString() public {
        str = "Hello!";
    }
}
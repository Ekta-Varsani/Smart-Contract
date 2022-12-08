// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.15;

contract convertor {
    int128 public fer;
    int128 public cel;

    function convertors(int128 _fer) public {
        cel = (_fer - 32) * 5/9;
    }
}
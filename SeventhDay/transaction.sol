// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.15;

contract transaction {
    uint public balanceReceived;
    function receiveMoney() public payable {
        balanceReceived += msg.value;
    }

    address public contractAdd = address(this);

    function getBalance() public view returns(uint) {
        return address(this).balance;
    }

    function withdrowMoney() public {
        address payable to = payable(msg.sender);
        to.transfer(this.getBalance());
    }

    function withdrowMoneyTo(address payable _to) public {
        _to.transfer(this.getBalance());
    }

    function withdrawSpecificAmount(address payable _to, uint _amount) public {
        _to.transfer(_amount);
    }
}
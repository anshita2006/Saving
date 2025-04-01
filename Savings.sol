// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SavingsVault {
    mapping(address => uint256) balances;

    function deposit() public payable {
        balances[msg.sender] += msg.value;
    }

    function withdraw() public {
        payable(msg.sender).transfer(balances[msg.sender]);
        balances[msg.sender] = 0;
    }
}

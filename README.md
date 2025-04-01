Ethereum Savings Vault
This is a simple Solidity smart contract that allows users to deposit and withdraw ETH.

Features
✅ Deposit ETH into the vault.
✅ Withdraw your stored ETH at any time.
✅ No external dependencies—pure Solidity.

Smart Contract
1. Deposit ETH
Send ETH to the contract using the deposit function. Your balance will be updated accordingly.

solidity
Copy
Edit
function deposit() public payable {
    balances[msg.sender] += msg.value;
}
2. Withdraw ETH
Withdraw all your stored ETH using the withdraw function.

solidity
Copy
Edit
function withdraw() public {
    payable(msg.sender).transfer(balances[msg.sender]);
    balances[msg.sender] = 0;
}
Deployment Details
Network: Specify the blockchain network (e.g., Ethereum Mainnet, Goerli, Sepolia, etc.)
Contract Address:0x40EF15A0AF4d2D03c18794dC732943C64D272f9B

mathematica
Copy
Edit
[Paste Deployed Contract Address Here]
How to Use
1. Deploy the Contract
Use Remix, Hardhat, or Foundry to deploy the contract.

2. Deposit ETH
Call deposit() with the amount of ETH you want to store.

3. Withdraw ETH
Call withdraw() to receive all your stored ETH.

Security Notes
This contract does not have access control. Any user can deposit and withdraw their own ETH.

There are no additional security features like owner-only withdrawal.

License
This project is released under the MIT License.

# Create-Mint-Token
The RiveraContract is a simple implementation of an ERC20 token on the Ethereum blockchain. It allows users to mint and burn tokens, managing their own token balances and the total supply of the token.

## Description
The RiveraContract is designed to handle basic token functionality with public variables for the token's name and symbol. It includes functions to mint and burn tokens. The mintTokens function allows the owner to increase the total supply by minting new tokens to a specified address, while the burnTokens function allows token holders to decrease the total supply by burning their tokens. The contract also includes a custom transfer function to handle token transfers between addresses.

## Getting Started

### Executing the Program
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at [Remix](https://remix.ethereum.org/).

#### Create a New File:
- Click on the "+" icon in the left-hand sidebar.
- Save the file with a .sol extension (e.g., RiveraContract.sol).
- Copy and paste the following code into the file:

    ```solidity
    // SPDX-License-Identifier: MIT
    pragma solidity 0.8.26;

    import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

    contract RiveraContract is ERC20 {
    constructor() ERC20("RiveraToken", "RTC") {}

      function mintTokens(address _to, uint256 _amount) public {
          _mint(_to, _amount);
      }

      function burnTokens(uint256 _amount) public {
          _burn(msg.sender, _amount);
      }

      function transfer(address _to, uint256 _amount) public override returns (bool) {
          _transfer(msg.sender, _to, _amount);
          return true; 
      }
  }
    ```

#### Compile the Code:
- Click on the "Solidity Compiler" tab in the left-hand sidebar.
- Make sure the "Compiler" option is set to `0.8.26` (or another compatible version).
- Click on the "Compile RiveraContract.sol" button.

#### Deploy the Contract:
- Click on the "Deploy & Run Transactions" tab in the left-hand sidebar.
- Select the "RiveraContract" contract from the dropdown menu.
- Click on the "Deploy" button.

#### Interact with the Contract:
- Once the contract is deployed, you can interact with it by calling the `mintTokens`, `burnTokens`, and `transfer` functions.
-To mint tokens, enter the recipient address and the number of tokens to mint, then click on the "mintTokens" button.
-To burn tokens, enter the number of tokens to burn, then click on the "burnTokens" button.
-To transfer tokens, enter the recipient address and the number of tokens to transfer, then click on the "transfer" button.

## Authors
Tamara Angela Rivera 
[@tamrivera05](https://github.com/tamrivera05)


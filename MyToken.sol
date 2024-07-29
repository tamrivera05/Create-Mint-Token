// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract RiveraContract {
    string public tokenName = "RiveraToken";
    string public tokenSymbol = "RTC";
    uint256 public tokenSupply = 0;

    mapping(address => uint256) public tokenBalances;

    function mintTokens(address to, uint256 amount) public  {
        tokenSupply += amount;
        tokenBalances[to] += amount;
    }

    function burnTokens(address from, uint256 amount) public {
        require(tokenBalances[from] >= amount, "Not enough balance to burn");
        tokenSupply -= amount;
        tokenBalances[from] -= amount;
    }

    function transferTokens(address from, address recipient, uint256 amount) public {
        require(tokenBalances[from] >= amount, "Not enough balance to transfer");
        tokenBalances[from] -= amount;
        tokenBalances[recipient] += amount;
        tokenSupply -= amount;
    }
}

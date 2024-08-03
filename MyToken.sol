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


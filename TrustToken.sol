// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TrustToken {
    string public name = "TrustToken";
    string public symbol = "TRUST";
    uint8 public decimals = 18;
    uint256 public totalSupply = 1_000_000 * (10 ** uint256(decimals));

    mapping(address => uint256) public balanceOf;

    uint256 public minimumValue = 1 ether; // 最低价值保护

    constructor() {
        balanceOf[msg.sender] = totalSupply; // 创始人初始持有所有代币
    }

    function transfer(address to, uint256 amount) public returns (bool) {
        require(balanceOf[msg.sender] >= amount, "余额不足");
        balanceOf[msg.sender] -= amount;
        balanceOf[to] += amount;

        // 通缩机制：销毁1%的代币
        uint256 burnAmount = amount / 100; 
        totalSupply -= burnAmount;

        return true;
    }

    // 最低价值保护
    function getTokenValue() public view returns (uint256) {
        return totalSupply > 0 ? minimumValue / totalSupply : 0;
    }
}
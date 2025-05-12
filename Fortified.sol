// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/security/ReentrancyGuard.sol";

contract Fortified is ReentrancyGuard {
    mapping(address => uint256) private lastAction;

    // 安全检查（集成到所有外部方法）
    modifier armored() {
        require(tx.origin == msg.sender, "禁止合约调用");
        require(block.timestamp > lastAction[msg.sender] + 30, "操作冷却中");
        _;
        lastAction[msg.sender] = block.timestamp;
    }

    // 增强型跨链调用
    function crossChainCall(uint16 dstChainId, bytes calldata payload) 
        external 
        payable
        armored
        nonReentrant
    {
        // 这里调用跨链逻辑...
    }
}
#!/bin/bash

# 前端健康检查
curl -I https://${VERCEL_URL} | grep "200 OK" || exit 1

# 合约验证检查
npx hardhat verify --network mumbai $CONTRACT_ADDRESS

# RPC节点响应测试
TEST_RPC="https://rpc-mumbai.maticvigil.com"
curl -X POST -H "Content-Type: application/json" --data '{"jsonrpc":"2.0","method":"eth_blockNumber","params":[],"id":1}' $TEST_RPC
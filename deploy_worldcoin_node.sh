#!/bin/bash
# 一键部署Worldcoin验证节点

echo "更新系统并安装Docker..."
sudo apt-get update && sudo apt-get install -y docker.io

echo "拉取Worldcoin验证节点镜像..."
docker pull worldcoin/orb-verifier:latest

echo "启动Worldcoin验证节点服务..."
docker run -d -p 5000:5000 \
  -e PRIVATE_KEY="您的以太坊私钥" \
  -e BLOCKCHAIN_RPC="https://mainnet.infura.io/v3/YOUR_KEY" \
  --name worldcoin-verifier worldcoin/orb-verifier

echo "部署完成！访问 http://[您的IP]:5000/verify 测试服务是否正常运行。"
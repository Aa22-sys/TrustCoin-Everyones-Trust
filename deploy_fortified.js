// 使用Hardhat部署Fortified智能合约
const { ethers } = require("hardhat");

async function main() {
  console.log("开始部署 Fortified 合约...");
  
  const Fortified = await ethers.getContractFactory("Fortified");
  const fortified = await Fortified.deploy();
  
  await fortified.deployed();
  console.log(`Fortified 合约已部署到地址: ${fortified.address}`);
}

main().catch((error) => {
  console.error("部署失败:", error);
  process.exitCode = 1;
});
async function main() {
  const Contract = await ethers.getContractFactory("YourContract");
  const deployedContract = await Contract.deploy();
  console.log(`Contract deployed at: ${deployedContract.address}`);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
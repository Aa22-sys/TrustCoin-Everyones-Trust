require("@nomiclabs/hardhat-etherscan");
require("solidity-coverage");

module.exports = {
  networks: {
    mumbai: {
      url: process.env.RPC_URL || "https://rpc.ankr.com/polygon_mumbai",
      accounts: {
        mnemonic: process.env.MNEMONIC,
        count: 1
      }
    }
  },
  etherscan: {
    apiKey: process.env.POLYGONSCAN_API_KEY
  }
};
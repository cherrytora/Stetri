require("@nomicfoundation/hardhat-toolbox");
// 讀.env用
require("dotenv").config();
// 驗證合約用
require("@nomiclabs/hardhat-etherscan");


const URL = process.env.URL
const KEY = process.env.PRIVATE_KEY
const ETHERSCAN_API_KEY = process.env.ETHERSCAN_API_KEY

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.17",
  networks: {
    goerli: {
      url: URL,
      accounts: [KEY],
    },
  },
  etherscan: {
    // Your API key for Etherscan
    // Obtain one at https://etherscan.io/
    apiKey: ETHERSCAN_API_KEY
  }
};

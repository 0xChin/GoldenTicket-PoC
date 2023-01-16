import { HardhatUserConfig } from "hardhat/config";
import "@nomicfoundation/hardhat-toolbox";
require("dotenv").config();

if (!process.env.PRIVATE_KEY) process.exit(1);

const config: HardhatUserConfig = {
  solidity: "0.8.17",
  networks: {
    goerli: {
      chainId: 5,
      url: process.env.GOERLI_RPC_URL,
      accounts: [process.env.PRIVATE_KEY],
    },
  },
};

export default config;

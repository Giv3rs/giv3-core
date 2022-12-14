import { GasLogger } from "../utils/helper.js";
import { ethers } from "hardhat";

require("dotenv").config();
const gasLogger = new GasLogger();

module.exports = async ({ getNamedAccounts, deployments, getChainId }: any) => {
  const { deploy } = deployments;
  const { deployer } = await getNamedAccounts();
  const chainId = await getChainId();

  console.log("Chain ID:", chainId);

  // Get Image Storage Contract
  const imageStorage = await deployments.get("ImageStorage");

  // Get Image Storage Static Contract

  const imageStorageStatic = await deployments.get("ImageStorageStatic");

  // Get MockUSDT Contract
  const mockUSDT = await deployments.get("MockUSDT");

  let giv3Core = await deploy("Giv3Core", {
    from: deployer,
    args: [imageStorageStatic.address, imageStorage.address, mockUSDT.address],
  });

  gasLogger.addDeployment(giv3Core);
};

module.exports.tags = ["Giv3Core", "Mumbai"];

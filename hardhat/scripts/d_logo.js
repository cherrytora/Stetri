const hre = require("hardhat");

async function main() {

  const STlogo = await hre.ethers.getContractFactory("STlogo"); 
  const sTlogo = await STlogo.deploy();
  await sTlogo.deployed();

  console.log("STlogo address:", sTlogo.address);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});

//0x73715Ec8e26FF669F246753699e618871E430f52
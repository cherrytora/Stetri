const hre = require("hardhat");

async function main() {

  // 去找PokenTest這個token的合約
  const Multi = await hre.ethers.getContractFactory("Multi"); 
  // deploy
  const multi = await Multi.deploy();
  await multi.deployed();

  console.log("Multi address:", multi.address);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});

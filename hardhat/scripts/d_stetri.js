const hre = require("hardhat");

async function main() {

  // 去找PokenTest這個token的合約
  const Str = await hre.ethers.getContractFactory("StetriTest"); 
  // deploy
  const str = await Str.deploy();
  await str.deployed();

  console.log("STT address:", str.address);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});

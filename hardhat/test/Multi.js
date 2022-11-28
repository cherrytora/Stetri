const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("Multi", function() {
  it("Should return the new greeting once it's change", async function(){
    const Multi = await ethers.getContractFactory("Multi");
    const multi = await Multi.deploy();
    await multi.deployed();
  });
});
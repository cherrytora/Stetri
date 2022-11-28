const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("Stetri", function() {
  it("Should return the new greeting once it's change", async function(){
    const StetriTest = await ethers.getContractFactory("Stetri");
    const stetriTest = await StetriTest.deploy();
    await stetriTest.deployed();
  });
});
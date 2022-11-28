const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("STlogo", function() {
  it("Should return the new greeting once it's change", async function(){
    const STlogo = await ethers.getContractFactory("STlogo");
    const sTlogo = await STlogo.deploy();
    await sTlogo.deployed();
  });
});
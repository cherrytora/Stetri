// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract STlogo is ERC721, Ownable {
    using Counters for Counters.Counter;

    Counters.Counter private _tokenIdCounter;
    
    constructor() ERC721("STlogo", "SKL") { _tokenIdCounter.increment(); }

    function _baseURI() internal pure override returns (string memory) {
        return "https://ipfs.io/ipfs/QmXi54FPmXYNeQJ6GPNrRZSfUVozzLiqAfhmrt2YrJThvE?filename=stetri.json";
    }

    function safeMint(address to) public onlyOwner {
        uint256 tokenId = _tokenIdCounter.current();
        _tokenIdCounter.increment();
        _safeMint(to, tokenId);
    }
}

// address:0x27E901Ad66B6Be71dE0FDaF59B01cBF2bbd21B90
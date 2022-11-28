// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract Multi is ERC721 {
    using Counters for Counters.Counter;

    //讓tokenURL可以從外部傳入
    uint256 public tokenCounter;
    mapping (uint256 => string) private _tokenURIs;

    // tokenCounter = 1 NFT的 id 從1開始數～
    // token 名字要記得改啊ＸＤＤＤＤＤＤＤ
    constructor() ERC721("WTMultiLocation", "WTML") { tokenCounter = 1; }

    // mint 
   function mint(address to, string memory _tokenURI) public {
        _safeMint(to, tokenCounter);
        _setTokenURI(tokenCounter, _tokenURI);
        // id ++
        tokenCounter++;
    }

    // 這邊是設定每個URL建立一個array，去把不同URI各自收起來
    function _setTokenURI(uint256 _tokenId, string memory _tokenURI) internal virtual {
        require(
            _exists(_tokenId),
            "ERC721Metadata: URI set of nonexistent token"
        );  // Checks if the tokenId exists
        _tokenURIs[_tokenId] = _tokenURI;
    }
    
    // 從外部傳入tokenURL呼叫這個function
    function tokenURI(uint256 _tokenId) public view virtual override returns(string memory) {
        require(
            _exists(_tokenId),
            "ERC721Metadata: URI set of nonexistent token"
        );
        return _tokenURIs[_tokenId];
    }
    
}

// address : 0xE2F966c0e41E0a9bB0d505d3F4cd1c23702EeCD0
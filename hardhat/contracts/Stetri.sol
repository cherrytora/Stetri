// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/security/Pausable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Stetri is ERC20, Pausable, Ownable {
    constructor() ERC20("StetriTest", "STT") {
        _mint(msg.sender, 19850513 * 10 ** decimals());
    }

    // https://ithelp.ithome.com.tw/articles/10209187
    // 合約有什麼問題需要暫停交易的時候使用～
    function pause() public onlyOwner {
        _pause();
    }

    function unpause() public onlyOwner {
        _unpause();
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function _beforeTokenTransfer(address from, address to, uint256 amount)
        internal
        whenNotPaused
        override
    {
        super._beforeTokenTransfer(from, to, amount);
    }
}

// address : 0x45Df04564437040397221B41a232b76287b5CA42

// old : "0x73715Ec8e26FF669F246753699e618871E430f52"

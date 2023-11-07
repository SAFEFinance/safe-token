// SPDX-License-Identifier: MIT
// contracts/SAFE.sol

pragma solidity ^0.8.17;

import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";

contract SAFE is ERC20Upgradeable, OwnableUpgradeable {
    function initialize() public virtual initializer {
        __SAFE_init("SAFE", "SAFE", 330000, _msgSender());
    }

    function __SAFE_init(string memory name, string memory symbol, uint256 initialSupply, address owner) internal onlyInitializing {
        __Ownable_init_unchained();
        __ERC20_init_unchained(name, symbol);
        __SAFE_init_unchained(name, symbol, initialSupply, owner);
    }

    function __SAFE_init_unchained(string memory, string memory, uint256 initialSupply, address owner) internal onlyInitializing {
        _mint(owner, initialSupply);
    }

    uint256[50] private __gap;
}

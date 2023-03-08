// SPDX-License-Identifier: MIT LICENSE

pragma solidity ^0.8.4;

// VERSION OF THE INTERFACE DEPLOYED WITH THE BLACKOUT NFT CONTRACT

import "./IMetroBlockScores.sol";

interface IMetroBlockInfo is IMetroBlockScores {
    function getBlockInfo(uint256 tokenId) external view returns (uint256 info);
    function getHoodBoost(uint256[] calldata tokenIds) external view returns (uint256 score);
}

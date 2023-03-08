// SPDX-License-Identifier: MIT LICENSE

import "../structs/MetroVaultStorageStructs.sol";
import "../../../nfts/interfaces/IMetroNFTLookup.sol";


pragma solidity 0.8.12;

// VERSION OF THE INTERFACE DEPLOYED WITH THE BLACKOUT NFT CONTRACT

interface IMetroVaultStorage is IMetroNFTLookup {

    function getStake(uint256 tokenId) external view returns (Stake memory);

    function setStake(uint256 tokenId, Stake calldata newStake) external;
    function setStakeTimestamp(uint256[] calldata tokenIds, uint40 timestamp) external;
    function setStakeCity(uint256[] calldata tokenIds, uint16 cityId, bool resetTimestamp) external;
    function setStakeExtra(uint256[] calldata tokenIds, uint40 extra, bool resetTimestamp) external;
    function setStakeOwner(uint256[] calldata tokenIds, address owner, bool resetTimestamp) external;

    function deleteStake(uint256[] calldata tokenIds) external;
    
    function stakeBlocks(address owner, uint256[] calldata tokenIds, uint16 cityId, uint40 extra) external;
    function stakeFromMint(address owner, uint256[] calldata tokenIds, uint16 cityId, uint32 extra) external;
    function unstakeBlocks(address owner, uint256[] calldata tokenIds) external;
    
    function tokensOfOwner(address account, uint256 start, uint256 stop) external view returns (uint256[] memory);

    function stakeBlocks(
      address owner,
      uint256[] calldata tokenIds,
      uint16[] calldata cityIds,
      uint40[] calldata extras,
      uint40[] calldata timestamps
    ) external;
}

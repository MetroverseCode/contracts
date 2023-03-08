## Smart Contracts for Metroverse (battle tested and gas optimised)

This repo contains all of the Metroverse smart contracts. The contracts provided here are licensed under the MIT License. This means that anyone is free to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the software, subject to the conditions laid out in the license. In other words, you are free to do whatever you like with these contracts, as long as you abide by the terms of the MIT License.

### Here is what you can find in the various sub-directories:

`/bridge` - The MetroBridge contract, used for bridging ERC-20 MET to MET that is tracked in a database and vice-versa. This contract also enables the minting of Metroverse Prime blocks

`/lib` - Variations of standard contracts that have been modified slightly for gas optimzation purposes.

`/nfts` - The NFT contracts for all Metroverse NFTs, along with their of their scoring contracts. 

`/opensea` - The contracts required for opensea feature compatibility, namely, the ability to list NFTs for sale on OpenSea without requiring a token approval transaction.

`/vault` - Both the original and v2 metroverse vault, originally required to make the hood optimization game function. All vault contracts were made obscelete and the most up-to-date version of the on-chain optimization game can be seen in MetroMiniBlockClaim.sol, but these contracts are here for historical purposes nonetheless. 


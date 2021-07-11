// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./ERC721PresetMinterPauserAutoId.sol";

/**
 * @title RecyclingToken contract
 * @dev Extends ERC721 Non-Fungible Token Standard basic implementation
 */
contract RecyclingToken is ERC721PresetMinterPauserAutoId {

    constructor(string memory baseURI) ERC721PresetMinterPauserAutoId("PET Token", "PTT", baseURI) {
    }


}
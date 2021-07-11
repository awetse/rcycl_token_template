// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./ERC20PresetMinterPauser.sol";


/**
 * @title RecyclingToken contract
 */
contract RecyclingToken is ERC20PresetMinterPauser {

    constructor() ERC20PresetMinterPauser("Recycling Token", "RCL") {
    }


}
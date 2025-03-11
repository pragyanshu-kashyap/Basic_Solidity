// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./math.sol";
contract MyContract{
    function calculateSquare(uint256 x) public pure returns (uint256){
        return Math.square(x);
    }
}
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// This library provides functions for basic arithmetic operations
library CalculatorLib {
    
    // Adds two numbers
    function add(int256 a, int256 b) internal pure returns (int256) {
        return a + b;
    }

    //Multiplies two numbers
    function multiply(int256 a, int256 b) internal pure returns (int256) {
        return a * b;
    }

    //Divides two numbers and returns the quotient
    // @dev Requires that b is not zero to prevent division by zero
    function divide(int256 a, int256 b) internal pure returns (int256) {
        require(b != 0, "Cannot divide by zero");
        return a / b;
    }

    /// @notice Finds the remainder when a is divided by b
    /// @dev Requires that b is not zero
    function modulo(int256 a, int256 b) internal pure returns (int256) {
        require(b != 0, "Cannot find modulo with zero");
        return a % b;
    }

    /// @notice Computes the square root of a number
    /// @dev Uses a simple approximation method (Babylonian method)
    function sqrt(uint256 x) internal pure returns (uint256) {
        if (x == 0 || x == 1) {
            return x;
        }
        
        uint256 z = (x + 1) / 2;
        uint256 y = x;
        
        while (z < y) {
            y = z;
            z = (x / z + z) / 2;
        }

        return y;
    }

    /// @notice Finds the absolute value of a number
    function absolute(int256 x) internal pure returns (int256) {
        return x < 0 ? -x : x;
    }

    /// @notice Raises a number base to the power of exp
    function power(uint256 base, uint256 exp) internal pure returns (uint256) {
        uint256 result = 1;
        for (uint256 i = 0; i < exp; i++) {
            result *= base;
        }
        return result;
    }
}
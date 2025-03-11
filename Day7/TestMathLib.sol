// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./Mathp1.sol";


// This contract tests all the functions from MathLib
contract TestMathLib {
    
    /// @notice Finds the maximum of two numbers
    function testMax(uint256 a, uint256 b) public pure returns (uint256) {
        return MathLib.max(a, b);
    }

    /// @notice Finds the minimum of two numbers
    function testMin(uint256 a, uint256 b) public pure returns (uint256) {
        return MathLib.min(a, b);
    }

    /// @notice Calculates the factorial of a number
    function testFactorial(uint256 n) public pure returns (uint256) {
        return MathLib.factorial(n);
    }

    /// @notice Generates the nth Fibonacci number
    function testFibonacci(uint256 n) public pure returns (uint256) {
        return MathLib.fibonacci(n);
    }

    /// @notice Checks if a number is an Armstrong number
    function testIsArmstrong(uint256 num) public pure returns (bool) {
        return MathLib.isArmstrong(num);
    }
}
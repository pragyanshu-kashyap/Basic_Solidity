// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./Mathp2.sol";


// Test Contract for Calculator Library
/// @dev This contract allows users to test different calculator functions
contract TestMathLib2 {
    
    /// @notice Adds two numbers
    function testAdd(int256 a, int256 b) public pure returns (int256) {
        return CalculatorLib.add(a, b);
    }

    /// @notice Multiplies two numbers
    function testMultiply(int256 a, int256 b) public pure returns (int256) {
        return CalculatorLib.multiply(a, b);
    }

    /// @notice Divides two numbers
    function testDivide(int256 a, int256 b) public pure returns (int256) {
        return CalculatorLib.divide(a, b);
    }

    /// @notice Finds the remainder of division
    function testModulo(int256 a, int256 b) public pure returns (int256) {
        return CalculatorLib.modulo(a, b);
    }

    /// @notice Computes the square root of a number
    function testSqrt(uint256 x) public pure returns (uint256) {
        return CalculatorLib.sqrt(x);
    }

    /// @notice Finds the absolute value of a number
    function testAbsolute(int256 x) public pure returns (int256) {
        return CalculatorLib.absolute(x);
    }

    /// @notice Raises base to the power of exp
    function testPower(uint256 base, uint256 exp) public pure returns (uint256) {
        return CalculatorLib.power(base, exp);
    }
}
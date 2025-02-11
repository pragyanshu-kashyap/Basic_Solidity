// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleCalculator {
    
    // Function to perform addition
    function add(int256 a, int256 b) public pure returns (int256) {
        return a + b;
    }
    
    // Function to perform subtraction
    function subtract(int256 a, int256 b) public pure returns (int256) {
        return a - b;
    }

    // Function to perform multiplication
    function multiply(int256 a, int256 b) public pure returns (int256) {
        return a * b;
    }

    // Function to perform division (with a check for division by zero)
    function divide(int256 a, int256 b) public pure returns (int256) {
        require(b != 0, "Cannot divide by zero");
        return a / b;
    }
    
    // Main function to calculate based on operator
    function calculate(int256 a, int256 b, string memory operator) public pure returns (int256) {
        if (keccak256(bytes(operator)) == keccak256(bytes("+"))) {
            return add(a, b);
        } else if (keccak256(bytes(operator)) == keccak256(bytes("-"))) {
            return subtract(a, b);
        } else if (keccak256(bytes(operator)) == keccak256(bytes("*"))) {
            return multiply(a, b);
        } else if (keccak256(bytes(operator)) == keccak256(bytes("/"))) {
            return divide(a, b);
        } else {
            revert("Invalid operator");
        }
    }
}

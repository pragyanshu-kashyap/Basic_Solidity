// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// This library provides functions to find max, min, factorial, Fibonacci, and check Armstrong numbers
library MathLib {
    
    ///Finds the maximum of two numbers
    function max(uint256 a, uint256 b) internal pure returns (uint256) {
        if (a > b) {
            return a;
        } else {
            return b;
        }
    }

    //Finds the minimum of two numbers
    function min(uint256 a, uint256 b) internal pure returns (uint256) {
        if (a < b) {
            return a;
        } else {
            return b;
        }
    }

    // Calculates the factorial of a number (n!)
    function factorial(uint256 n) internal pure returns (uint256) {
        uint256 result = 1;

        // Multiply numbers from 1 to n
        for (uint256 i = 1; i <= n; i++) {
            result *= i;
        }

        return result;
    }

    // Generates the nth Fibonacci number
    function fibonacci(uint256 n) internal pure returns (uint256) {
        if (n == 0) {
            return 0;
        }
        if (n == 1) {
            return 1;
        }

        uint256 first = 0;
        uint256 second = 1;
        uint256 next;

        // Calculate Fibonacci sequence up to nth term
        for (uint256 i = 2; i <= n; i++) {
            next = first + second;
            first = second;
            second = next;
        }

        return second;
    }

    // Checks if a number is an Armstrong number
    function isArmstrong(uint256 num) internal pure returns (bool) {
        uint256 originalNum = num;
        uint256 sum = 0;
        uint256 temp = num;
        uint256 digits = 0;

        // Count the number of digits
        while (temp > 0) {
            digits++;
            temp /= 10;
        }

        temp = num;

        // Calculate sum of digits each raised to the power of total digits
        while (temp > 0) {
            uint256 digit = temp % 10;
            uint256 power = 1;

            // Compute digit^digits (power calculation)
            for (uint256 i = 0; i < digits; i++) {
                power *= digit;
            }

            sum += power;
            temp /= 10;
        }

        return sum == originalNum;
    }
}
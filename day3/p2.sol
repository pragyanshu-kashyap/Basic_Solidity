// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MinMaxFinder {
    
    // Function to find the maximum and minimum of three numbers
    function findMinMax(int num1, int num2, int num3) public pure returns (int, int) {
        int max = num1;
        int min = num1;
        
        // Finding the maximum
        if (num2 > max) {
            max = num2;
        }
        if (num3 > max) {
            max = num3;
        }
        
        // Finding the minimum
        if (num2 < min) {
            min = num2;
        }
        if (num3 < min) {
            min = num3;
        }
        
        return (max, min);
    }
}

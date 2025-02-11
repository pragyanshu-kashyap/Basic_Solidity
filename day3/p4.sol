// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract QuadraticRoots {

    // Function to calculate the square root of a number
    function sqrt(uint y) public pure returns (uint z) {
        if (y > 3) {
            z = y;
            uint x = y / 2 + 1;
            while (x < z) {
                z = x;
                x = (y / x + x) / 2;
            }
        } else if (y != 0) {
            z = 1;
        }
    }

    // Function to find the roots of the quadratic equation a*x^2 + b*x + c = 0
    function findRoots(int a, int b, int c) public pure returns (string memory, string memory) {
        require(a != 0, "a cannot be zero for a quadratic equation.");
        
        // Calculate the discriminant (D)
        int D = b * b - 4 * a * c;
        
        if (D > 0) {
            // Two real and distinct roots
            int sqrtD = int(sqrt(uint(D))); // Calculate square root of discriminant
            int root1 = (-b + sqrtD) / (2 * a);
            int root2 = (-b - sqrtD) / (2 * a);
            return (string(abi.encodePacked("Real and distinct roots: ", intToString(root1), " and ", intToString(root2))), "");
        } else if (D == 0) {
            // One real double root
            int root = -b / (2 * a);
            return (string(abi.encodePacked("One real root: ", intToString(root))), "");
        } else {
            // Two complex roots (imaginary)
            int realPart = -b / (2 * a);
            int imaginaryPart = int(sqrt(uint(-D))) / (2 * a);
            return (string(abi.encodePacked("Complex roots: ", intToString(realPart), " + ", intToString(imaginaryPart), "i and ", intToString(realPart), " - ", intToString(imaginaryPart), "i")), "");
        }
    }

    // Helper function to convert integer to string
    function intToString(int value) internal pure returns (string memory) {
        if (value == 0) {
            return "0";
        }
        bool negative = value < 0;
        uint absValue = negative ? uint(-value) : uint(value);
        uint length = 0;
        while (absValue != 0) {
            length++;
            absValue /= 10;
        }
        if (negative) {
            length++;
        }
        bytes memory result = new bytes(length);
        uint index = length - 1;
        absValue = negative ? uint(-value) : uint(value);
        while (absValue != 0) {
            result[index--] = bytes1(uint8(48 + absValue % 10));
            absValue /= 10;
        }
        if (negative) {
            result[0] = '-';
        }
        return string(result);
    }
}

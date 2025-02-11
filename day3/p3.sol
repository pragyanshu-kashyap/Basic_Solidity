// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TriangleProperties {

    // Function to check if three sides form a valid triangle
    function isValidTriangle(int a, int b, int c) public pure returns (bool) {
        return (a + b > c && a + c > b && b + c > a);
    }

    // Function to find the type of the triangle and its area
    function getTriangleTypeAndArea(int a, int b, int c) public pure returns (string memory, string memory, int) {
        // First, check if it's a valid triangle
        require(isValidTriangle(a, b, c), "The provided sides do not form a valid triangle.");
        
        // Determine the type of the triangle
        string memory triangleType;
        
        if (a == b && b == c) {
            triangleType = "Equilateral";
        } else if (a == b || b == c || a == c) {
            triangleType = "Isosceles";
        } else if (a * a + b * b == c * c || b * b + c * c == a * a || c * c + a * a == b * b) {
            triangleType = "Right-angled";
        } else {
            triangleType = "Scalene";
        }

        // Calculate the area using Heron's formula
        int s = (a + b + c) / 2;
        int area = int(sqrt(uint(s * (s - a) * (s - b) * (s - c))));

        return (triangleType, "Valid Triangle", area);
    }

    // Helper function to calculate the square root of a number
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
}

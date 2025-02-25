// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MatrixOperations {

    // Function to add two matrices
    function addMatrices(int[][] memory matrix1, int[][] memory matrix2) public pure returns (int[][] memory) {
        // Ensure matrices have the same dimensions
        require(matrix1.length == matrix2.length, "Matrices must have the same number of rows.");
        require(matrix1[0].length == matrix2[0].length, "Matrices must have the same number of columns.");

        uint rows = matrix1.length;
        uint cols = matrix1[0].length;

        int[][] memory result = new int[][](rows);

        for (uint i = 0; i < rows; i++) {
            result[i] = new int[](cols);
            for (uint j = 0; j < cols; j++) {
                result[i][j] = matrix1[i][j] + matrix2[i][j];
            }
        }
        return result;
    }

    // Function to subtract two matrices
    function subtractMatrices(int[][] memory matrix1, int[][] memory matrix2) public pure returns (int[][] memory) {
        // Ensure matrices have the same dimensions
        require(matrix1.length == matrix2.length, "Matrices must have the same number of rows.");
        require(matrix1[0].length == matrix2[0].length, "Matrices must have the same number of columns.");

        uint rows = matrix1.length;
        uint cols = matrix1[0].length;

        int[][] memory result = new int[][](rows);

        for (uint i = 0; i < rows; i++) {
            result[i] = new int[](cols);
            for (uint j = 0; j < cols; j++) {
                result[i][j] = matrix1[i][j] - matrix2[i][j];
            }
        }
        return result;
    }

    // Function to multiply two matrices
    function multiplyMatrices(int[][] memory matrix1, int[][] memory matrix2) public pure returns (int[][] memory) {
        // Ensure matrix1 columns are equal to matrix2 rows for multiplication
        require(matrix1[0].length == matrix2.length, "Matrix1's columns must equal Matrix2's rows.");

        uint rows = matrix1.length;
        uint cols = matrix2[0].length;
        uint common = matrix1[0].length;

        int[][] memory result = new int[][](rows);

        for (uint i = 0; i < rows; i++) {
            result[i] = new int[](cols);
            for (uint j = 0; j < cols; j++) {
                int sum = 0;
                for (uint k = 0; k < common; k++) {
                    sum += matrix1[i][k] * matrix2[k][j];
                }
                result[i][j] = sum;
            }
        }
        return result;
    }
}


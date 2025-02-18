// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2<0.9.0;

contract Lottery {

    // Event to emit when a winner is declared
    event Winner(uint256 number, string prize);

    // Function to generate a random number (for simplicity, using block.timestamp)
    function generateRandomNumber() public view returns (uint256) {
        return uint256(keccak256(abi.encodePacked(block.timestamp))) % 1000;
    }

    // Function to determine the prize based on the random number
    function declarePrize() public {
        uint256 randomNumber = generateRandomNumber();
        string memory prize;

        // Check for first prize: Divisible by both 3 and 5
        if (randomNumber % 3 == 0 && randomNumber % 5 == 0) {
            prize = "First Prize";
        }
        // Check for second prize: Divisible by either 7 or 11
        else if (randomNumber % 7 == 0 || randomNumber % 11 == 0) {
            prize = "Second Prize";
        }
        // Check for third prize: Divisible by 5 but not 10
        else if (randomNumber % 5 == 0 && randomNumber % 10 != 0) {
            prize = "Third Prize";
        } else {
            prize = "No Prize"; // If the number doesn't meet any conditions
        }

        emit Winner(randomNumber, prize);  // Emit the winner event
    }
}
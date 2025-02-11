//SPDX-License-Identifier:GPL-3.0
pragma solidity >=0.8.26;

contract IfElse{
    function foo(uint256 marks) public pure returns (string  memory){
        if (marks>=90){
            return "0";
        } else if (marks <= 89 && marks>=89){
            return "E";
        } else if (marks <= 79 && marks>=70){
            return "A";
        } else if (marks <= 69 && marks>=60){
            return "B";
        }else if (marks <= 59 && marks>=50){
            return "C";
        }else if (marks <= 49 && marks>=40){
            return "D";
        } else{
            return "F";
        }
    }
}
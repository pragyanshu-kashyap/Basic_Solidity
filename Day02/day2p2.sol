//user input
//SPDX -License-Identifier:GPL-3.0

pragma solidity >=0.8.2<0.9.0;

contract UserInput{
    // a state variable to use store input
    string public userInput= "Hi";
    uint256 public data1;

    //function to take input from user
    function setInput(string memory input , uint256 d) public{
        userInput=input;//store theinput in the contract state
        data1=d; 
    }

    //function to retrive the stored input
    function getInput1()public view returns (string memory){
        return userInput;
    }
    function get() public view returns (uint256){
        return data1;
    }
}
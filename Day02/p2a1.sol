//SPDX-License-Identifier:GPL-3.0
pragma solidity >=0.8.2<0.9.0;

contract Calculator{
    int256 public s = 1e18;
    function add(int256 a, int256 b)public pure returns (int256){
        return a+b;
    }

    function substract(int256 a, int256 b)public pure returns (int256){
        return a-b;
    }

    function mul(int256 a, int256 b)public pure returns (int256){
        return a*b;
    }

    function div(int256 a, int256 b)public view returns (int256){
        return (a*s/b);
    }

}
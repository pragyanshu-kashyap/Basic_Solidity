//SPDX-License-Identifier:GPL-3.0
pragma solidity >=0.8.2<0.9.0;

contract swapVariable{ //temp conversion 

    function swapWiththirdVariable(int256 a, int256 b)public pure returns(int256  ,int256 ){
        int256 temp ;
        temp=a;
        a=b;
        b=temp;
        return (a,b);
    }
    function swapWithoutthirdVariable(int256 a, int256 b)public pure returns(int256  ,int256 ){
        a= a+b;
        b=a-b;
        a=a-b;
        return (a,b);
    }
}
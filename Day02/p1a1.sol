//SPDX-License-Identifier:GPL-3.0
pragma solidity >=0.8.2<0.9.0;

contract tempconv{ //temp conversion 
    int256 public s = 1e18;
    function conv(int256 celsius)public view returns(int256){
        int256 farenheitscale= ((9*celsius*s)/5 ) +(32*s);
        return farenheitscale;
    }
}
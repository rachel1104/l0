// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
//条件控制
contract Ifelse {
    //if else
    function test1(uint x) public pure returns(uint) {
       if (x < 10) {
            return 0;
       } else if (x < 20) {
            return 1;
       } else {
            return 2;
       }
    }
    //if else 三元运算符
    function test2(uint x) public pure returns(uint) {
       return (x < 10) ? 1 : 2; 
    }
}
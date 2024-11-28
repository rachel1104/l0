// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
//条件运算符
contract OperatorArithemtic6 {
    //函数
    function test(uint a, uint b) public pure returns(uint) {
        uint result = a > b ? a-b : b-a ;
        return result;
    }
}
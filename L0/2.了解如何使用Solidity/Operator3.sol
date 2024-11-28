// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
//逻辑运算符

contract OperatorArithemtic3 {
    //逻辑运算函数
    function logic(bool a, bool b) public pure returns(bool,bool,bool) {
        //逻辑与
        bool and = a && b ;
        //逻辑或
        bool or = a || b ;
        //逻辑非
        bool not = !a ;
        return (and,or,not);
    }
}
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
//算术运算符

contract OperatorArithemtic {
    //变量初始化
    uint public a = 20;
    uint public b = 10;
    //加
    uint public sum = a + b;
    //减
    uint public diff = a - b;
    //乘
    uint public mul = a * b;
    //除
    uint public div = a / b;
    //取模 取余数
    uint public mod = a % b;
    //求幂
    uint public pow = a ** 2;
    //自增
    uint public inc1 = a++; //先加1再赋值
    uint public inc2 = ++a; //先赋值，再加1
    //自减
    uint public dec1 = b--; //先减1再赋值
    uint public dec2 = --b; //先赋值，再减1

}
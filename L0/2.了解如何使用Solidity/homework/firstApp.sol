// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

//第一个合约
contract HelloWorld {
     //状态变量 声明变量
    string public str = "Hello world!";

    //set 函数  重新赋值
    function set(string memory s) public {
        str = s;
    }
    //get 函数  获取值
    function sayHello() public view returns(string memory) {
    return str;
    }
    
}
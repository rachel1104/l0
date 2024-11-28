// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
//枚举类型
contract Enum {
    //定义一个枚举类型
    enum Action { up, down, left, right }
    //定义变量，默认值为第一个元素 即up的值
    Action public action;
    //设置默认值
    function setDefault() public {
        action = Action.left;
    }
    //设置，传递一个uint的值（0-3）
    function set(Action _action) public {
        action = _action;
    }
    //取值，返回一个uint值
    function get() public view returns(Action) {
        return action;
    }
    //取最小值
    function getMinValue() public pure returns(Action) {
        return type(Action).min;
    }
     //取最大值
    function getMaxValue() public pure returns(Action) {
        return type(Action).max;
    }
}
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
//值类型
contract DataTypes {
    //布尔类型
    bool public boo = true;
    //整型
    uint8 public u8 = 123;
    uint256 public u256 = 456;
    uint public u = 789;
    //整型的最小值和最大值
    int public minint = type(int).min;
    int public maxint = type(int).max;
    //地址类型
    address public addr = 0x68Dd3a71AC18773Eb072D0FBe4F77aF71903e4a8;
    //字节类型
    bytes1 public b1 = 0x1a;
    bytes2 public b2 = 0x1a2b;
    // bytes32 public b32 = 0x1a2b3c4d5a6b7c8d9a0a1a2b3c4d5a6b7c8d9a0a1a2b3c4d5a;

    //默认值
    bool public defaultBoo;
    uint public defaultUint;
    int public defaultint;
    address public defaultAddr;
}
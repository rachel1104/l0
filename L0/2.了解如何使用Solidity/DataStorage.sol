// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

//变量存储位置和作用域
contract DataStorage {
    //状态变量强制为storage
    string public str;
    bytes public bs;
    uint[] public arr;
    mapping(address => uint) map;
    struct Student {
        string name;
        uint score;
    }
    Student[] public students;

    //公用函数public和外部函数external中，函数的存储方式只能是memory,calldata
    //私有函数private和内部函数internal中，函数的存储方式还可以是storage
    //字符串的存储位置,memory,calldata
    function setString(string memory _str) public {
        str = _str;
    }
    //字节的存储位置memory,calldata
    function setBytes(bytes memory _bs) public {
        bs = _bs;
    }
    //数组存储位置
    function setArray(uint[] memory _arr) public {
        for(uint i = 0; i < _arr.length; i++) {
            arr.push(_arr[i]);
        }
    }
    //结构体的存储位置
    function setStruct(Student calldata _student) public {
        students.push(_student);
    }
    //在内部函数中(internal),变量可以声明成storage
    function getLength(uint[] storage _arr) internal view returns(uint) {
        return (_arr.length);
    }
    //调用内部函数
    function test() public view returns(uint) {
        return getLength(arr);
    }
}
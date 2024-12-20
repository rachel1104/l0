// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
//结构类型
contract Struct {
    //定义结构体
    struct Student {
        string name;
        uint score;
    }

    //定义变量
    Student[] public students;

    //添加数据
    function add(string memory _name, uint _score) public {
        // Students.push(Student(_name, _score));
        //1. 类似于函数调用
        
        //2. 先初始化一个空结构再赋值
        Student memory student;
        student.name = _name;
        student.score = _score;
        students.push(student);
    }
    //获取数据（返回结构）
    function get(uint idx) public view returns(Student memory) {
        Student memory student = students[idx];
        return student;
    }
    //更新数据
    function set(uint idx, uint _score) public {
        students[idx].score = _score;
    }
}
1. Solidity 简介
    Solidity 是什么？Solidity 的特点和用途
        1.solidity是一种面向对象（合约）,为实现智能合约而创建的高级编程语音
        2.solidity是一种针对以太坊虚拟机（EVM）设计的语言
        3.solidity是一种静态型语言，支持复杂的用户定义编程，支持库和集成
2. Solidity 安装与使用
    安装 Remix IDE  
    Remix IDE 界面简介
3. Hello World
    编写简单的 Solidity 合约
    在 Remix IDE 中编译和部署合约
4. Solidity 合约组成结构
    合约结构概述
    合约的基本组成部分
        状态变量
        函数
        函数修饰器
        事件
        Error
        枚举
        结构体
        <!-- // SPDX-License-Identifier: GPL-3.0
        pragma solidity ^0.8.17;
        contract Owner {
            // 结构体
            struct Identity {
                address addr;
                string name;
            }
            // 枚举
            enum State {
                HasOwner,
                NoOwner
            }
            // 事件
            event OwnerSet(address indexed oldOwnerAddr, address indexed newOwnerAddr);
            event OwnerRemoved(address indexed oldOwnerAddr);
            // 函数修饰器
            modifier isOwner() {
                require(msg.sender == owner.addr, "Caller is not owner");
                _;
            }
            // 状态变量
            Identity private owner;
            State private state;
            // 下面的都是函数            
            // 构造函数
            constructor(string memory name) {
                owner.addr = msg.sender;
                owner.name = name;
                state = State.HasOwner;
                emit OwnerSet(address(0), owner.addr);
            }
            // 普通函数
            function changeOwner(address addr, string calldata name) public isOwner {
                owner.addr = msg.sender;
                owner.name = name;
                emit OwnerSet(owner.addr, addr);
            }
            // 普通函数
            function removeOwner() public isOwner {
                emit OwnerRemoved(owner.addr);
                delete owner;
                state = State.NoOwner;
            }
            // 普通函数
            function getOwner() external view returns (address, string memory) {
                return (owner.addr, owner.name);
            }
            // 普通函数
            function getState() external view returns (State) {
                return state;
            }
        } -->
5. 注释
    Solidity 中的注释类型和用法
        // 单行注释
        /* */ 多行注释
    
6. 数据类型
Solidity 中的基本数据类型
7. 变量
定义和声明变量
变量的作用域和生命周期
8. 数据位置
内存、存储和栈上数据的区别和使用
9. 布尔类型
Solidity 中的布尔类型及其用法
10. 整型
不同类型的整数及其范围
11. 地址类型
地址类型的特点和用法
12. 静态字节数组
定义和使用静态字节数组
13. 字面值
Solidity 中常见的字面值表示
14. 枚举类型
定义和使用枚举类型
15. 自定义值类型
如何定义和使用自定义值类型
16. 数组
数组的定义和初始化
数组的操作和常见用法
17. 数组切片
对数组的部分进行操作和访问
18. 数组成员
数组的成员属性和方法
19. 多维数组
定义和操作多维数组
20. 动态字节数组
动态字节数组的定义和使用
21. 结构体
定义和使用结构体
22. 映射类型
定义和使用映射
23. 控制结构
if-else 语句
for 循环
while 循环
do while 循环
break 和 continue 语句
24. require、assert 和 revert
区别和用法
25. 合约及其组成结构
合约概述
合约的基本组成部分
26. constant 和 immutable
区别和用法
27. 函数
函数的定义和调用
函数的参数和返回值
28. 构建函数
合约的构建函数定义和使用
29. 修饰器
修饰器的定义和使用
30. 可见性
函数和状态变量的可见性修饰符
31. 状态可变性
修改函数状态的关键字
32. view 和 pure 函数
区别和用法
33. receive 和 fallback 函数
接收以太币的特殊函数
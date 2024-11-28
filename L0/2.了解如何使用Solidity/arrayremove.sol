// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
//数组
contract ArrayRemove {
    //[1,2,3] -- remove(1) --》-[1,3]
    //[1,2,3,4] --》remove（2） [1,2,4,5,5] -》[1,2,4,5]
    uint[] public arr;

    //移除数组元素
    function remove(uint idx) public {
        require(idx < arr.length, "index out of range");

        //指定索引右边的元素从右向左移动
        for (uint i = idx; i < arr.length-1; i++)
            arr[i] =arr[i+1];
        arr.pop();
    }

    function test1() public {
        arr = [1,2,3,4,5];
        remove(2);
        assert(arr[0] == 1);
        assert(arr[1] == 2);
        assert(arr[2] == 4);
        assert(arr[3] == 5);
        assert(arr.length == 4);
    }
    function test2() public {
        arr = [1];
        remove(0);
        assert(arr.length == 0);
    }

}
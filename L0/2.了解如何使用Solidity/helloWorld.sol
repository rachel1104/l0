// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract HelloWorld {
    
    string strVar = "Hello world!";
    //public, private, internal, external

    function sayHello() public view returns(string memory) {
    return addInfo(strVar);
    }
    function setHelloWorld(string memory newString) public {
    strVar = newString;
    }
    function addInfo(string memory helloWorldStr) internal pure returns(string memory) {
    return string.concat(helloWorldStr, " from Frank's contract"); 
    }
}
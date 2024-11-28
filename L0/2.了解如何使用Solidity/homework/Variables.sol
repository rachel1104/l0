// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Variables {
    // State variables are stored on the blockchain.
    string public text = "Hello";
    uint256 public num = 123;

    function doSomething(uint256 i) public pure returns(uint256) { 
        return i+5;
    }
}

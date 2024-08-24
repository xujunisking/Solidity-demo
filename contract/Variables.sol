// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/**
变量
Solidity 中有 3 种类型的变量

当地的

在函数内部声明
不存储在区块链上
状态

在函数外声明
存储在区块链上
全球（提供有关区块链的信息）
**/
contract Variables {
    // State variables are stored on the blockchain.
    string public text = "Hello";
    uint256 public num = 123;

    function doSomething() public view {
        // Local variables are not saved to the blockchain.
        uint256 i = 456;

        // Here are some global variables
        uint256 timestamp = block.timestamp; // Current block timestamp
        address sender = msg.sender; // address of the caller
    }
}
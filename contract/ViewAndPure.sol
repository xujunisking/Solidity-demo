// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/**
视图和纯函数
Getter 函数可以声明view或pure。

View函数声明不会改变任何状态。

Pure函数声明不会更改或读取任何状态变量。
**/
contract ViewAndPure {
    uint256 public x = 1;

    // Promise not to modify the state.
    function addToX(uint256 y) public view returns (uint256) {
        return x + y;
    }

    // Promise not to modify or read from the state.
    function add(uint256 i, uint256 j) public pure returns (uint256) {
        return i + j;
    }
}
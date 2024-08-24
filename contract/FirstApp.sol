// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/**
首次申请

这是一个简单的合同，您可以获取、增加和减少此合同中的计数存储。
**/
contract Counter {
    uint256 public count;

    // Function to get the current count
    function get() public view returns (uint256) {
        return count;
    }

    // Function to increment count by 1
    function inc() public {
        count += 1;
    }

    // Function to decrement count by 1
    function dec() public {
        // This function will fail if count = 0
        count -= 1;
    }
}
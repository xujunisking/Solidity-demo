// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/**
Ether 和 Wei
交易以 支付ether。

类似于一美元等于 100 美分，一美元ether等于 10(18) wei。
**/
contract EtherUnits {
    uint256 public oneWei = 1 wei;
    // 1 wei is equal to 1
    bool public isOneWei = (oneWei == 1);

    uint256 public oneGwei = 1 gwei;
    // 1 gwei is equal to 10^9 gwei
    bool public isOneGwei = (oneGwei == 1e9);

    uint256 public oneEther = 1 ether;
    // 1 ether is equal to 10^18 wei
    bool public isOneEther = (oneEther == 1e18);
}
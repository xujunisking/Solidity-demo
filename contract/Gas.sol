// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/**
气体
一笔交易你需要支付多少以太币？
您支付gas spent * gas price的金额ether为

gas是计算单位
gas spentgas是交易中使用的总金额
gas priceether是你愿意支付多少gas
具有较高 gas 价格的交易有更高的优先权被纳入区块。

未使用的 Gas 将会退还。

气体限制
你可以花费的 gas 量有两个上限

gas limit（您愿意在交易中使用的最大 gas 量由您设置）
block gas limit（区块中允许的最大 gas 量由网络设置）
**/
contract Gas {
    uint256 public i = 0;

    // Using up all of the gas that you send causes your transaction to fail.
    // State changes are undone.
    // Gas spent are not refunded.
    function forever() public {
        // Here we run a loop until all of the gas are spent
        // and the transaction fails
        while (true) {
            i += 1;
        }
    }
}
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/**
For 和 While 循环
Solidity 支持for、while和do while循环。

不要编写不受限制的循环，因为这可能会达到 gas 限制，导致你的交易失败。

由于上述原因，while和do while循环很少使用。
**/
contract Loop {

    function loop() pure public {
        // for loop
        for (uint256 i = 0; i < 10; i++) {
            if (i == 3) {
                // Skip to next iteration with continue
                continue;
            }
            if (i == 5) {
                // Exit loop with break
                break;
            }
        }

        // while loop
        uint256 j;
        while (j < 10) {
            j++;
        }
    }
}
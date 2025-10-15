// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Counter {
    // public variable gives an auto-generated getter `count()`
    uint256 public count;

    /// @notice Increases the counter by 1
    function increment() external {
        count += 1;
    }

    /// @notice Decreases the counter by 1 (reverts if would underflow)
    function decrement() external {
        require(count > 0, "Counter: underflow");
        count -= 1;
    }

    /// @notice Reset the counter to zero
    function reset() external {
        count = 0;
    }
}

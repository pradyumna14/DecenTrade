// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

library Counters {
    struct Counter {
        uint256 _value; // default: 0
    }

    function current(Counter storage counter) internal view returns (uint256) {
        return counter._value;
    }

    function increment(Counter storage counter) internal {
        unchecked {
            uint256 value = counter._value;
            counter._value = value + 1;
        }
    }

    function decrement(Counter storage counter) internal {
        unchecked {
            uint256 value = counter._value;
            require(value > 0, "Counter: decrement overflow");
            counter._value = value - 1;
        }
    }

    function reset(Counter storage counter) internal {
        counter._value = 0;
    }
}

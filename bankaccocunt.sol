// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Bank_Account {
    address public investor;
    uint256 public capital;

    constructor() {
        investor = msg.sender;
    }

    function investCapital(uint256 funds) public {
        require(msg.sender == investor, "Only the investor can invest");

        // Ensure a positive investment amount
        assert(funds > 0);

        capital += funds;
    }

    function withdrawCapital(uint256 funds) public {
        if (msg.sender != investor) {
            revert("Only the investor can withdraw the capital");
        }

        // Ensure a non-negative remaining capital
        require(funds <= capital, "Withdrawal amount exceeds capital");

        capital -= funds;
    }

    function getCapital() public view returns (uint256) {
        return capital;
    }
}

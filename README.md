# Bank Account Smart Contract

The `Bank_Account` smart contract is designed to manage an investment account on the Ethereum blockchain. It provides functionalities for an assigned investor to invest and withdraw capital securely.

## Features

### 1. Investor Assignment
- The contract is initialized with a designated investor identified by their Ethereum address.

### 2. Investment
- **Function: `investCapital(uint256 funds)`**
  - Allows the assigned investor to add funds to the capital pool.
  - The investor must be the initiator of the investment.
  - The investment amount must be positive.
  - **Statement Used: `require` and `assert` for conditional checks.**

### 3. Withdrawal
- **Function: `withdrawCapital(uint256 funds)`**
  - Permits the assigned investor to withdraw funds from the capital pool.
  - The investor must be the initiator of the withdrawal.
  - The withdrawal amount must not exceed the available capital.
  - **Statement Used: `require` and `revert` for conditional checks.**

### 4. Capital Inquiry
- **Function: `getCapital() public view returns (uint256)`**
  - Provides a read-only view of the current capital in the account.

## Usage

1. **Invest Capital:**
   - Utilize the `investCapital` function with the desired investment amount.
   - Only the assigned investor can initiate investments.
   - The investment amount must be greater than zero.

2. **Withdraw Capital:**
   - Employ the `withdrawCapital` function with the desired withdrawal amount.
   - Only the assigned investor can initiate withdrawals.
   - The withdrawal amount must not exceed the available capital.

3. **Check Capital:**
   - Use the `getCapital` function to retrieve the current capital in the account.

## Statements

- **Require Statement:** Used to ensure that certain conditions are met before executing a function. If the condition is not met, the function execution is reverted.

- **Revert Statement:** Used to revert the changes made in the current transaction if a certain condition is not met. It provides a custom error message.

- **Assert Statement:** Used for internal errors to check for conditions that should never occur. If the condition is false, the transaction is reverted.

## Author

mohammedsahil

cooldudeesahel098@gmail.com

## License

This smart contract is released under the MIT License. See [LICENSE](LICENSE) for details.

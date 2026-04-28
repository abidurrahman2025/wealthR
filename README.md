# WealthR

WealthR is a lightweight financial forecasting tool designed to assist users in various aspects of personal finance, including inflation adjustment, savings projection, and wealth visualization.

## Core Functions

1. **calc_wealth**: This function calculates the future value of investments based on the principal amount and monthly contributions. 
   - **Usage Example**:
     ```python
     principal = 10000  # Initial investment
     monthly_contribution = 500  # Monthly savings
     future_value = calc_wealth(principal, monthly_contribution)
     print(f"Future Value: {future_value}")
     ```

2. **adjust_inflation**: This function adjusts monetary values for inflation, allowing for more accurate financial planning.
   - **Usage Example**:
     ```python
     value = 1000  # Amount in today's dollars
     inflation_rate = 0.03  # 3% inflation
     adjusted_value = adjust_inflation(value, inflation_rate, years=5)
     print(f"Inflation Adjusted Value: {adjusted_value}")
     ```

3. **plot_wealth**: This function visualizes the growth of wealth over time, providing insights into savings trajectories.
   - **Usage Example**:
     ```python
     plot_wealth(principal, monthly_contribution, years=10)
     ```

## Installation Instructions
To install WealthR, use the following command:
```bash
pip install wealthR
```

WealthR provides a suite of tools that enables users to make informed financial decisions and track their wealth effectively.
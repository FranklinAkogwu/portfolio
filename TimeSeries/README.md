Time Series Analysis and Forecasting Project
Project Overview
This project focuses on analyzing and forecasting sales data over a 4-year period (2014-2018) using various time series analysis techniques. The project demonstrates the application of statistical methods, data decomposition, and predictive modeling to understand patterns in sales data and create accurate forecasts.
Dataset
The dataset consists of daily and monthly sales figures from a superstore spanning from January 2014 to early 2018. The data exhibits several interesting characteristics:

High daily volatility with significant spikes
Clear monthly patterns and trends
An overall upward trend in sales, particularly after mid-2015

Methodology
1. Exploratory Data Analysis

Visualization of daily and monthly sales trends
Identification of outliers and notable sales events
Comparison between different time aggregation levels

2. Time Series Decomposition
The original time series was decomposed into three components:

Trend: The long-term progression of the series, showing steady growth from ~40,000 to ~65,000 units
Seasonality: Repeating patterns within the data, including:

Weekly patterns (peaks on Mondays, lows on Wednesdays)
Yearly patterns (peaks in early March and July, lows in late March)


Residual: The remaining variation after trend and seasonality are removed

3. Statistical Tests

Stationarity Test: Augmented Dickey-Fuller (ADF) test

Test Statistic: -4.493
p-value: 0.00021
Result: Series is stationary, which facilitates accurate forecasting



4. Correlation Analysis

Autocorrelation Function (ACF): Identified correlations with past values
Partial Autocorrelation Function (PACF): Revealed direct relationships at specific lags
Results used to inform model parameter selection

5. Model Development
Two forecasting models were implemented and compared:
SARIMA (Seasonal ARIMA) Model

Captures both non-seasonal and seasonal components
Accounts for autoregressive and moving average behaviors
Parameters optimized through grid search and AIC minimization

Prophet Model

Facebook's decomposable time series forecasting tool
Handles missing data and outliers well
Automatically detects yearly, weekly, and daily seasonality

6. Model Evaluation
Models were evaluated using:

Root Mean Square Error (RMSE):

SARIMA: 15,846.78
Prophet: 16,201.12


Mean Absolute Error (MAE):

SARIMA: 13,141.30
Prophet: 14,057.94



SARIMA slightly outperformed Prophet based on these metrics.
7. Forecast Generation

Created 12-month forward forecasts with confidence intervals
Visualized predicted values against historical data and actual test data
Captured seasonal patterns and trend continuation

Key Findings

Sales Trend: After a period of stability in 2014-mid 2015, sales showed a consistent upward trend.
Seasonality Patterns:

Weekly: Sales peak on Mondays (~15,000 units above average) and reach their lowest point on Wednesdays (~10,000 units below average)
Yearly: Multiple peaks and troughs throughout the year, with major spikes in March and July


Forecast Performance: Both models captured the general pattern well, with SARIMA performing marginally better.
Model Comparison: While SARIMA provided slightly lower error metrics, Prophet offered simplicity and automatic seasonality detection.

Future Work

Incorporate external variables (holidays, promotions, economic indicators)
Experiment with additional models (LSTM, ensemble methods)
Develop automated anomaly detection for unusual sales patterns
Create interactive dashboards for real-time forecasting updates

Technical Implementation
This project was implemented using Python with the following libraries:

pandas and numpy for data manipulation
matplotlib and seaborn for visualization
statsmodels for SARIMA implementation and statistical tests
prophet for Facebook Prophet model
scikit-learn for evaluation metrics

Visualizations
The project includes several visualizations:
Daily and monthly sales trends
Time series decomposition (trend, seasonality, residuals)
ACF and PACF plots
Train-test data split
Model forecasts with confidence intervals
Weekly and yearly seasonality patterns

![Screenshot 2025-03-10 184223](https://github.com/user-attachments/assets/ce0f952f-772e-488b-b85b-7c0bcc36a69e)
![Screenshot 2025-03-10 184327](https://github.com/user-attachments/assets/da8094b7-b5ef-4f46-a704-b4776420d163)
![Screenshot 2025-03-10 184353](https://github.com/user-attachments/assets/f8ad5b4d-73b1-4336-8aea-e6836b334fbe)
![Screenshot 2025-03-10 184420](https://github.com/user-attachments/assets/455703de-6c1a-4e7d-aaf6-69b924e73f7c)
![Screenshot 2025-03-10 184449](https://github.com/user-attachments/assets/02eb7923-878a-45d8-a779-a56a6676edda)
![Screenshot 2025-03-10 184554](https://github.com/user-attachments/assets/0e13a38f-c8cd-4f76-991b-479f2b8750a8)
![Screenshot 2025-03-10 184628](https://github.com/user-attachments/assets/5b3ed019-067c-46b7-bb4b-f48e34568f26)
![Screenshot 2025-03-10 184742](https://github.com/user-attachments/assets/e3b77571-f1cf-4dee-9dfc-36a20a3443bb)
![Screenshot 2025-03-10 184751](https://github.com/user-attachments/assets/9ffd3019-7aaf-4d99-bd1f-0d9ba78cc63e)
![Screenshot 2025-03-10 184801](https://github.com/user-attachments/assets/ffde563f-813a-4eaa-8d70-713805190243)
![Screenshot 2025-03-10 184832](https://github.com/user-attachments/assets/9e5db97a-7839-437a-8aa5-53a7f2b78453)

Conclusion
This project demonstrates comprehensive time series analysis techniques applied to retail sales data. The results show that both SARIMA and Prophet models can effectively capture the patterns in this data, with SARIMA providing slightly better accuracy. The analysis reveals important seasonality patterns that can help inform business decisions around inventory management, staffing, and promotional strategies.

# Credit Card Fraud Detection System

## Overview
This project builds a machine learning model to identify fraudulent credit card transactions, focusing on imbalanced classification, anomaly detection, and model evaluation with skewed data. The model uses Logistic Regression as a baseline and analyzes the Credit Card Fraud Detection Dataset.

## Features
- Preprocessing of imbalanced transaction data
- Exploratory Data Analysis (EDA) with visualizations (distributions, box plots, correlation heatmap)
- Logistic Regression implementation for fraud detection
- Evaluation using precision, recall, F1-score, ROC curve (AUC = 0.957), and Precision-Recall curve (AUC = 0.744)

## Dataset
- **Source**: [Credit Card Fraud Detection Dataset (Kaggle)](https://www.kaggle.com/mlg-ulb/creditcardfraud)
- **Size**: 284,807 transactions
- **Features**: 30 PCA-transformed features (V1-V28), `Time` (seconds from first transaction), `Amount` (transaction value), and `Class` (0 = normal, 1 = fraud)
- **Class Distribution**: 284,315 normal (99.8273%), 492 fraud (0.1727%)
- **Preprocessing**: Split into training (227,845 samples) and testing (56,962 samples) sets

## Requirements
- Python 3.x
- Libraries: `pandas`, `numpy`, `scikit-learn`, `matplotlib`, `seaborn`
- Install dependencies:

Shape: (284,807, 31), with no missing values across all columns.

Class Distribution: Highly imbalanced—284,315 normal transactions (99.8273%) and 492 fraudulent transactions (0.1727%). This skewness is typical for fraud detection and poses a challenge for model training.

Features:
Time: Seconds elapsed since the first transaction (mean ~94,813s, max ~1,727,792s).

Amount: Transaction amounts (mean ~88.35, max ~25,691, with a right-skewed distribution).

V1-V28: PCA-transformed features (anonymized, with varying means and standard deviations).

Class: Binary label (0 = normal, 1 = fraud).

Preprocessing: The dataset was split into training (227,845 samples) and testing (56,962 samples) sets, with 394 and 98 fraud transactions in each, respectively.

Exploratory Data Analysis (EDA)
Transaction Amount Distribution: The histogram shows a highly skewed distribution, with most transactions having low amounts (peaking near 0). The log-scale plot reveals a more detailed spread, indicating a long tail of higher amounts.
![Screenshot 2025-03-13 142500](https://github.com/user-attachments/assets/30c46faa-4248-472c-bfb0-5ff02b311d13)

Transaction Amount by Class: Box plots show that fraudulent transactions (Class 1) tend to have slightly higher median amounts (120) compared to normal transactions (88), with a broader interquartile range for fraud cases. This suggests amount might be a weak but useful feature.
![Screenshot 2025-03-13 142509](https://github.com/user-attachments/assets/c77836dc-2b8b-4789-9864-485f817647e8)

Transaction Time Distribution: The time histogram shows two peaks (around 25,000s and 150,000s), possibly indicating transaction patterns over time. The time by class plot shows no significant difference between normal and fraudulent transactions, suggesting Time may not be a strong predictor.
![Screenshot 2025-03-13 142517](https://github.com/user-attachments/assets/9bc229cc-b4b4-4cd0-9672-3efda9df4ced)

Feature Distributions (V1-V28): Histograms for V3, V10, V12, V14, V16, V17 show that normal transactions dominate, with fraud cases having distinct but overlapping distributions. This indicates potential for anomaly detection.

Correlation Heatmap: The heatmap shows low correlations between features, with Class having the strongest relationship with Amount and some V-features (e.g., V17, V14). This suggests that while PCA obscures raw features, some transformed features still carry discriminative power.
![Screenshot 2025-03-13 142556](https://github.com/user-attachments/assets/69592f42-bd2d-46e5-9e42-602c2a7f5923)
![Screenshot 2025-03-13 142540](https://github.com/user-attachments/assets/664b0131-8ba1-434a-b034-983c2bedad93)


Model and Results
Model: I used Logistic Regression, a solid choice for binary classification, especially with imbalanced data when paired with proper techniques.

Training: Took 0.92 seconds, indicating a lightweight model or efficient implementation.

Performance:
Classification Report:
Precision (0): 1.00, Recall (0): 1.00, F1-score (0): 1.00 (for normal transactions, 56,864 samples).

Precision (1): 0.83, Recall (1): 0.64, F1-score (1): 0.72 (for fraud transactions, 98 samples).

Accuracy: 0.99, Macro Avg: 0.91/0.82/0.86, Weighted Avg: 1.00/1.00/1.00.

Confusion Matrix: 
True Negatives (TN): 56,851 (correctly identified normal transactions).

False Positives (FP): 13 (normal transactions misclassified as fraud).

False Negatives (FN): 35 (fraud transactions missed).

True Positives (TP): 63 (correctly identified fraud transactions).

ROC Curve: Area Under Curve (AUC) = 0.957, indicating good separability.

Precision-Recall Curve: AUC = 0.744, reflecting the challenge of the imbalanced dataset (precision drops as recall increases).

Interpretation: The model excels at identifying normal transactions (high precision and recall for Class 0) but struggles with fraud detection (lower recall for Class 1). The 35 false negatives are concerning in a fraud context, as missing fraud cases can lead to financial loss.

Strengths
Effective use of EDA to understand data distribution and feature behavior.

Good choice of Logistic Regression for a baseline model with imbalanced data.

Solid performance metrics (AUC-ROC 0.957) suggest the model has learned meaningful patterns despite the imbalance.

Areas for Improvement
Imbalance Handling: The low recall (0.64) for fraud indicates a need for techniques like SMOTE, class weighting, or anomaly detection methods (e.g., Isolation Forest) to better capture the minority class.

Feature Engineering: Explore interactions between Amount, Time, and V-features or try dimensionality reduction techniques beyond PCA.

Model Selection: Test more robust models like Random Forest, XGBoost, or neural networks, which might handle non-linearities better.

Threshold Tuning: Adjust the decision threshold (default 0.5) to balance precision and recall, given the cost of false negatives in fraud detection.



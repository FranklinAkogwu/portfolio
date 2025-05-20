# Wine Quality Prediction

## Overview

This project focuses on predicting the quality of wine based on its physicochemical properties using machine learning techniques. The dataset used contains various chemical attributes of wine samples along with their quality ratings, which are used to build predictive models.

The goal is to develop models that can accurately estimate wine quality, providing insights into which factors most influence the perceived quality of wine.

## Dataset

The dataset includes several features such as:

- Fixed acidity
- Volatile acidity
- Citric acid
- Residual sugar
- Chlorides
- Free sulfur dioxide
- Total sulfur dioxide
- Density
- pH
- Sulphates
- Alcohol

The target variable is the wine quality score, typically an integer rating between 3 and 9.

## Methodology

- **Data Exploration & Visualization:**  
  Initial analysis to understand feature distributions and correlations.

- **Data Preprocessing:**  
  Cleaning data, handling missing values (if any), and preparing features and target variables.

- **Modeling:**  
  Various machine learning models were trained and evaluated, including:
  - Random Forest
  - Gradient Boosting Machines
  - Support Vector Machines
  - Logistic Regression (for classification)

- **Evaluation:**  
  Models were assessed using appropriate metrics such as accuracy, precision, recall, F1-score for classification, and RMSE or R² for regression.

- **Feature Importance:**  
  Analysis to identify which features most strongly influence wine quality.

## Results

- The Random Forest and Gradient Boosting models demonstrated the best predictive performance.
- Important features influencing wine quality included alcohol content, volatile acidity, sulphates, and pH.
- The models achieved an accuracy of approximately 70% in classification tasks, which is reasonable given the subjective nature of wine quality ratings.
- Confusion matrices showed that the model occasionally confuses adjacent quality classes, such as medium and high quality.

## Recommendations

To further improve the model and insights, consider the following:

- **Feature Engineering:**  
  Create new features or transform existing ones to better capture relationships within the data.

- **Hyperparameter Tuning:**  
  Use techniques such as Grid Search or Random Search to optimize model parameters for better performance.

- **Try Ensemble Methods:**  
  Explore stacking or blending multiple models to improve accuracy and robustness.

- **Address Class Imbalance:**  
  If the dataset has uneven distribution of quality classes, apply techniques like SMOTE or class weighting.

- **Use Regression or Classification Based on Goals:**  
  Choose the modeling approach that best fits your prediction objectives (continuous quality score vs. quality categories).

- **Cross-validation:**  
  Employ k-fold cross-validation to ensure model stability and generalizability.

- **Domain Knowledge Integration:**  
  Incorporate expert knowledge about wine production to guide feature selection and interpretation.

## Conclusion

Predicting wine quality is a complex task due to the subjective nature of taste and quality ratings. However, machine learning models can capture important relationships between chemical properties and quality scores, providing useful insights for winemakers and enthusiasts.

## How to Use

1. Clone the repository:
2. Navigate to the project directory:
3. Open the Jupyter notebook `WineQualityPrediction.ipynb` to explore the analysis and run the models.

## Dependencies

- Python 3.x
- pandas
- numpy
- matplotlib
- seaborn
- scikit-learn
- (Optional) xgboost

Install dependencies using pip:

*(Note: You may create a `requirements.txt` file with the above packages for convenience.)*

## Author

**Franklin Akogwu**

---

Feel free to explore, modify, and improve the models. Contributions and feedback are welcome!


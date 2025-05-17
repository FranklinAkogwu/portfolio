# Titanic Survival Prediction

Predicting which passengers survived the Titanic disaster using machine learning.

## Project Overview

This project uses the famous Titanic dataset to build a predictive model that estimates the likelihood of passenger survival based on demographic and ticket information. The goal is to demonstrate a real-world classification workflow, including data preprocessing, exploratory data analysis, model training, and evaluation.

## Dataset

- **Source:** [Kaggle Titanic Dataset](https://www.kaggle.com/competitions/titanic/data)
- **Rows:** 891
- **Features:** Passenger class, sex, age, siblings/spouses aboard, parents/children aboard, fare, embarked port, etc.

## Workflow

1. **Data Loading:** The dataset is loaded from a public URL for reproducibility.
2. **Exploratory Data Analysis:** Visualizations show survival rates overall, by gender, and by age.
3. **Data Preprocessing:**
   - Missing values in `Age` are imputed with the median.
   - Categorical variables (`Sex`, `Embarked`) are label-encoded.
   - Irrelevant columns (`Name`, `Ticket`, `Cabin`, `PassengerId`) are dropped.
4. **Model Training:** A Random Forest Classifier is trained on 80% of the data.
5. **Evaluation:** The model is evaluated on the remaining 20% using accuracy, classification report, and a confusion matrix.

## Results

- **Test Accuracy:** ~0.83
- **Precision, Recall, F1-score:**  
  The model performs well, especially in predicting non-survivors, with balanced metrics for both classes.

**Confusion Matrix:**
- **Interpretation:**  
  - 97 true negatives (correctly predicted not survived)
  - 52 true positives (correctly predicted survived)
  - 13 false positives
  - 17 false negatives

## Key Insights

- **Sex** is the most important feature: females had a much higher survival rate.
- **Passenger class** and **age** also significantly affect survival.
- Data preprocessing and feature selection are crucial for model performance.

## How to Run

1. Clone the repository:
2. Open the notebook:
3. Run all cells in Google Colab or Jupyter Notebook.

## Dependencies

- pandas
- numpy
- matplotlib
- seaborn
- scikit-learn


## License

This project is open source and available under the [MIT License](LICENSE).

## Author

**Franklin Akogwu**  
Data Scientist | Machine Learning Enthusiast  
[GitHub Profile](https://github.com/FranklinAkogwu)

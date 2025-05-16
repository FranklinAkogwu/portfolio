# Breast Cancer Diagnosis - Machine Learning Project

This project implements a machine learning pipeline to predict whether a breast tumor is **malignant** or **benign** based on medical attributes. The analysis uses the Breast Cancer Wisconsin (Diagnostic) dataset and demonstrates key steps in data science including data exploration, preprocessing, model training, and evaluation.

---

## Project Overview

Breast cancer is one of the most common cancers worldwide. Early and accurate diagnosis is critical for effective treatment. This project applies classification algorithms to help automate the diagnostic process using features extracted from digitized images of breast mass fine needle aspirates (FNA).

---

## Dataset

- **Name:** Breast Cancer Wisconsin (Diagnostic) Dataset  
- **Source:** [UCI Machine Learning Repository](https://archive.ics.uci.edu/ml/datasets/Breast+Cancer+Wisconsin+(Diagnostic))  
- **Size:** 569 samples, 30 numeric features  
- **Target:** Diagnosis label - Malignant (1) or Benign (0)  

The dataset includes features describing characteristics of cell nuclei present in breast tissue images.

---

## Project Structure

The core analysis is contained in the Jupyter Notebook:  
`BreastCancerDiagnosis.ipynb`

The notebook covers:

- Loading and exploring the dataset  
- Data preprocessing (encoding, scaling)  
- Splitting data into training and testing sets  
- Training multiple classification models including Logistic Regression, Random Forest, Support Vector Machine (SVM), and Neural Networks (MLP)  
- Evaluating model performance using accuracy, confusion matrix, and classification reports  
- Visualizing data distributions and model results  

---

## How to Run

1. Open the notebook in [Google Colab](https://colab.research.google.com/) or your local Jupyter environment.  
2. Run each cell sequentially to reproduce the analysis.  
3. Modify or extend the notebook to experiment with other models or datasets.

---

## Results Summary

- The models achieve high accuracy (typically above 93%) in classifying tumors.  
- SVM and Random Forest classifiers generally perform best on this dataset.  
- The project demonstrates practical steps in handling real-world healthcare data with machine learning.

---

## Dependencies

- Python 3.x  
- pandas  
- numpy  
- matplotlib  
- seaborn  
- scikit-learn  

You can install the required packages using:


---

## Author

**Franklin Akogwu**  
[GitHub Profile](https://github.com/FranklinAkogwu)

---

## License

This project is open source and available under the MIT License.

---

## Acknowledgments

- Dataset provided by the UCI Machine Learning Repository  
- Inspired by classic machine learning tutorials on healthcare diagnostics  

---

Feel free to explore, modify, and contribute!


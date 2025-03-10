This directory contains files related to SentimentAnalysis

E-commerce Product Review Sentiment Analysis
Project Overview
This project builds a natural language processing (NLP) model to classify product reviews as positive, negative, or neutral. The analysis helps understand customer sentiment and can provide valuable insights for product improvement and customer service.
Objective
Develop and evaluate multiple machine learning models to accurately classify product review sentiment, focusing on:

Text preprocessing techniques
Feature extraction methods
Classifier performance comparison
Understanding sentiment indicators

Dataset

100,000 product reviews from an e-commerce platform
Distribution: 70% positive, 19% negative, 11% neutral
Features include review text and sentiment labels

Methodology

Data Preprocessing

Text cleaning (removing special characters, stopwords)
Tokenization
TF-IDF vectorization (5,000 features)


Model Training & Evaluation

Split: 80,000 training samples, 20,000 testing samples
Models implemented:

Logistic Regression
Naive Bayes
Linear SVM
Random Forest


Performance Analysis

Evaluation metrics: accuracy, precision, recall, F1-score
Confusion matrices
Word importance analysis
Sample predictions


Key Results

Best Model: Logistic Regression (85.22% accuracy)
![Screenshot 2025-03-10 123536](https://github.com/user-attachments/assets/c8de255e-c44f-4054-8336-5e3f450f619e)
![Screenshot 2025-03-10 123610](https://github.com/user-attachments/assets/4428dfc7-0d68-4282-9386-d5386729f7fd)
![Screenshot 2025-03-10 123631](https://github.com/user-attachments/assets/4015452a-8928-429b-a6c5-764a31f94603)
![Screenshot 2025-03-10 123648](https://github.com/user-attachments/assets/7d363a8e-00f5-4be8-a9ce-4e3bcfa1a5e1)


Performance by Class:

Positive reviews: Strong classification performance (F1 = 0.93)
Negative reviews: Good classification performance (F1 = 0.80)
Neutral reviews: Challenging to classify accurately (F1 = 0.33-0.86)


Key Sentiment Indicators:

Positive: "delicious", "amazing", "great", "excellent"
Negative: "worst", "bland", "terrible", "disappointing"
Neutral: "ok", "aok", "okay", "however"



Visualizations:

Sentiment distribution:
![Screenshot 2025-03-10 123435](https://github.com/user-attachments/assets/1947135c-32a5-4c83-a97a-85ef2704405c)

Word clouds for each sentiment category:
![Screenshot 2025-03-10 123456](https://github.com/user-attachments/assets/4b977c62-7269-4086-939b-064c283c8555)
![Screenshot 2025-03-10 123506](https://github.com/user-attachments/assets/42601aaf-d23f-4b6a-8c45-8904911534d5)
![Screenshot 2025-03-10 123514](https://github.com/user-attachments/assets/54c3c547-ab6c-4661-a959-d8089d4b6b9d)

Confusion matrices:
![Screenshot 2025-03-10 123559](https://github.com/user-attachments/assets/22dd60a8-8548-4686-aa7f-5462bb310150)
![Screenshot 2025-03-10 123623](https://github.com/user-attachments/assets/399ca2af-d489-4c83-80f4-e298c4d5bb3b)
![Screenshot 2025-03-10 123641](https://github.com/user-attachments/assets/4e886176-b2d7-437b-a3f5-878edbacb9ac)
![Screenshot 2025-03-10 123658](https://github.com/user-attachments/assets/c4e285aa-53e5-447a-885e-ee294eb2cf68)

Feature importance analysis

Challenges & Next Steps
Current challenges:

Class imbalance affecting neutral review classification
Difficulty distinguishing subtle sentiment expressions

Planned improvements:

Implement advanced NLP techniques (Word2Vec, GloVe embeddings)
Explore deep learning models (LSTM, BERT)
Perform hyperparameter tuning
Address class imbalance issues

Skills Demonstrated:

Text preprocessing and feature extraction
Machine learning model selection and evaluation
Handling imbalanced datasets
NLP techniques for sentiment analysis
Data visualization and insights communication

Tools & Technologies:

Python
Scikit-learn
NLTK / spaCy
Pandas
Matplotlib / Seaborn

This directory contains files from a Real estate price prediction project

California Housing Price Prediction
Project Overview
This project analyzes the California Housing dataset to predict housing prices based on various features. Using several machine learning algorithms, I explored the relationships between housing attributes and prices to develop an accurate prediction model.
Dataset Description
The dataset contains 20,640 entries with 9 features:

MedInc: Median income in block group
HouseAge: Median house age in block group
AveRooms: Average number of rooms per household
AveBedRms: Average number of bedrooms per household
Population: Block group population
AveOccup: Average number of household members
Latitude: Block group latitude
Longitude: Block group longitude
PRICE: Median house value (target variable)

All features are numeric with float64 data type, and there are no missing values in the dataset.
Exploratory Data Analysis
Statistical Summary
The dataset shows houses with:

Average price of approximately $2.07 (in $100,000s)
Median income around $3.87 (in $10,000s)
Average house age of ~29 years
Average of 5.43 rooms and 1.1 bedrooms per household
Average occupancy of 3.07 people

Distribution Analysis
The price distribution shows a multi-modal pattern with:
![Screenshot 2025-03-10 152447](https://github.com/user-attachments/assets/3ce18687-4a47-4a26-81b4-9c2e2688b4a0)

A major peak around $1.5-2.0
A significant concentration at the maximum value of $5.0, suggesting censoring of the data
Most houses falling in the $0.5-3.0 price range

Correlation Analysis
Key correlations with PRICE:
![Screenshot 2025-03-10 152542](https://github.com/user-attachments/assets/92bb80b0-3e00-47c5-92cd-75a1c1ad532a)


Strong positive correlation with MedInc (0.69)
Moderate positive correlation with AveRooms (0.15)
Weak positive correlation with HouseAge (0.11)
Weak negative correlations with Latitude (-0.14) and Longitude (-0.05)

Other notable relationships:

Strong correlation between AveRooms and AveBedRms (0.85)
Strong negative correlation between Latitude and Longitude (-0.92)
Negative correlation between HouseAge and Population (-0.30)

Feature Relationships
Scatter plots revealed:
![Screenshot 2025-03-10 152616](https://github.com/user-attachments/assets/719a4714-c132-48b1-a12e-2f17aff672b1)


Strong positive relationship between MedInc and Price
Weak relationships between other features and Price
Most extreme values (outliers) for AveRooms, AveBedRms, Population, and AveOccup show minimal correlation with Price

Machine Learning Models
I implemented and compared several regression models:
ModelMSERMSEMAER²Linear Regression0.4560940.6753470.4861640.651945Ridge Regression0.4561060.6753560.4861640.651936Lasso Regression0.6673750.8169300.6151670.490712Random Forest0.2547600.5047380.3288990.805587Gradient Boosting0.2868390.5355730.3660260.781108
The Random Forest model performed best with:

Lowest MSE (0.255)
Highest R² score (0.806)
Good prediction visualization with points clustered around the diagonal line

Residual Analysis
The Random Forest model's residual plot shows:
![Screenshot 2025-03-10 152651](https://github.com/user-attachments/assets/c0b14497-3e75-4dc2-a723-c116bd51678e)


Non-uniform pattern suggesting heteroscedasticity
Higher residuals for higher-priced houses
A fan-shaped pattern with increasing variance at higher predicted values

Feature Importance
The most influential features for price prediction:
![Screenshot 2025-03-10 152706](https://github.com/user-attachments/assets/64b6057d-9f00-4c40-8c15-afe399f92127)

MedInc (0.52) - by far the most important feature
AveOccup (0.12)
Latitude (0.09)
Longitude (0.09)
HouseAge (0.05)

Less important features include: BedroomRatio, Population, HouseholdSize, AveRooms, and AveBedRms.
Conclusions

Median income in a neighborhood is the strongest predictor of housing prices
Geographic location (Latitude/Longitude) plays a significant role in housing prices
The Random Forest model provides the best prediction accuracy with an R² of 0.81
The model performs better for lower and mid-range priced homes than for high-end properties
Some price censoring exists at the $500,000 level (5.0), affecting model performance
![Screenshot 2025-03-10 155049](https://github.com/user-attachments/assets/75e4373b-fd04-48b6-bcc8-5bc3ac099541)

Future Work

Implement more advanced models like XGBoost or Neural Networks
Engineer additional features such as distance to major cities or amenities
Address the censoring issue in the target variable
Implement cross-validation for more robust model evaluation
Consider geographic clustering to better capture location effects

Technologies Used

Python
Pandas
NumPy
Matplotlib
Seaborn
Scikit-learn

# Data Science Projects

Welcome to my data science portfolio! This repository showcases the projects I have completed, highlighting my skills in data analysis, machine learning, and data visualization.

---

## Table of Contents

1. [Housing Prices Analysis](#housing-prices-analysis)
2. [Supermarket Sales Analysis](#supermarket-sales-analysis)
3. [Chance of Getting Admitted to College](#Admissions)

---

### 1. Housing Prices Analysis

**Objective:**  
Predict house prices using features like the number of rooms, bathrooms, location, and living area.

**Tools Used:**
- Python (Pandas, NumPy, Scikit-learn)
- Visualization (Matplotlib, Seaborn)

**Dataset:**  
[Kaggle Housing Dataset](https://www.kaggle.com/datasets/sukhmandeepsinghbrar/housing-price-dataset?resource=download)

**Key Insights:**
Bedrooms: For each additional bedroom, the model predicts a decrease in house price. This could indicate multicollinearity (e.g., a strong correlation with sqft_living) since typically more bedrooms would increase the price. 
Bathrooms: Each additional bathroom is associated with an increase in house price. This suggests that bathrooms are a key factor in price prediction. 
Houses: That have larger living areas are priced significantly higher. This aligns with typical expectations, as larger living areas usually drive up home prices. 
Age: Implies that newer homes are valued higher than older homes in the model, which is supposed to be the standard, as newer homes are generally more expensive. 

**How to Run:**
1. Clone the repository.
2. Install the required libraries using `pip install -r requirements.txt`.
3. Open `housing_prices_analysis.ipynb` in Jupyter Notebook and execute the cells.

---

### 2. Supermarket Sales Analysis

**Objective:**  
Analyze supermarket sales data to identify purchasing trends and optimize marketing strategies.

**Tools Used:**
- R (GGplot2, Dplyr)


**Dataset:**  
Sample supermarket sales dataset from Kaggle (https://www.kaggle.com/datasets/aungpyaeap/supermarket-sales/data).

**Key Insights:**
- The peak sales period for branch A is recorded between 10 – 11am and 2 – 3pm, making over $10,000 monthly, for branch B is between 6 – 7pm, making over $15,000 monthly. And for branch C is between 12 – 1pm and 6 – 7pm, making over $12,000 monthly.
- We discovered female members in branch C spend over $9,000 monthly on Food and Beverages, while male members in branch B spend roughly $8,000 monthly on Health and Beauty supplies
- From the analysis of the three branches, we discovered that branch C outsells the remaining branches A and B) by a margin of about $10,000+.

**How to Run:**
1. Clone the repository.
2. Install the required libraries using `pip install -r requirements.txt`.
3. Open `supermarket_sales_analysis.ipynb` in Jupyter Notebook or view dashboards in Tableau Public.

---

### 3. Chance of Gaining Admission to College

**Objective:**  
Analyze Admissions data to identify factors that affects ones chances of getting admitted to college.

**Tools Used:**
- Python (Pandas, NumPy, Scikit-learn)
- Visualization (Matplotlib, Seaborn)


**Dataset:**  
Sample admissions dataset provided.

**Key Insights:**
-  CGPA: Often has the highest coefficients in admission models, indicating its critical impact on decisions.

-  SOP Rating: A low magnitude implies this factor is less influential compared to others.

-  University Ratings: A low magnitude implies this factor is less influential compared to others.

-  LOR Strength: Strong LORs are helpful for admissions.

-  TOEFL Score: Higher TOEFL scores are positively associated with admission chances.

-  GRE Score: Higher GRE score increases the likelihood of admission.

**How to Run:**
1. Clone the repository.
2. Install the required libraries using `pip install -r requirements.txt`.
3. Open `supermarket_sales_analysis.ipynb` in Jupyter Notebook or view dashboards in Tableau Public.

---
## About
I am an aspiring Data Scientist passionate about turning data into actionable insights. Feel free to explore my projects and reach out with any questions or feedback!

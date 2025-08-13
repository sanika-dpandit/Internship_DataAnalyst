# Exploratory Data Analysis (EDA) – Titanic Dataset

##  Project Overview
This project performs an **Exploratory Data Analysis (EDA)** on the Titanic dataset to uncover patterns, relationships, and trends affecting passenger survival rates.  
The analysis uses **Python, Pandas, Matplotlib, and Seaborn** for both statistical and visual exploration.

## Tools & Libraries Used
- **Python 3**
- **Pandas** – Data manipulation & cleaning
- **Matplotlib** – Data visualization
- **Seaborn** – Advanced visualizations

##  Dataset
The dataset used is the [Titanic dataset](https://raw.githubusercontent.com/datasciencedojo/datasets/master/titanic.csv), which contains passenger details such as:
- Age
- Sex
- Passenger Class (Pclass)
- Fare
- Survival Status
- Other demographic information

## Analysis Steps
1. **Data Loading & Inspection**  
   - Viewed dataset structure using `.head()`, `.info()`, `.describe()`
   - Checked missing values and target variable distribution

2. **Univariate Analysis**  
   - Histograms for Age distribution  
   - Countplot for Survival by Gender

3. **Bivariate Analysis**  
   - Boxplots for Age vs Passenger Class  
   - Scatterplots for Age vs Fare (colored by Survival)

4. **Multivariate Analysis**  
   - Pairplot for Age, Fare, and Survival  
   - Heatmap for correlation between numerical variables

5. **Observations**  
   - Survival rates are higher among females, first-class passengers, and those paying higher fares
   - Younger passengers generally have better survival chances
   - Fare and class are strongly related to survival probability

## Visualizations
- **Histogram:** Age distribution
- **Boxplot:** Age by Passenger Class
- **Scatterplot:** Age vs Fare with Survival hue
- **Pairplot:** Age, Fare, Survival
- **Heatmap:** Correlation between features
- **Countplot:** Survival by Gender

## Key Findings
- **Gender:** Females had a much higher survival rate compared to males  
- **Class:** First-class passengers had better survival rates than lower classes  
- **Fare:** Higher ticket prices correlated with higher survival chances  
- **Age:** Most passengers were 20–40 years old; younger passengers fared slightly better  
- **Correlation:** Fare positively correlated with Survival, Pclass negatively correlated

## 📄 Deliverables
- `titanic_eda.ipynb` – Jupyter Notebook containing the full analysis
- `Task5_Report.pdf` – PDF report of findings with screenshots and insights
- `titanic.csv` – Dataset used in the analysis

Author
Sanika Pandit


  

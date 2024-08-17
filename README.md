# HealthCare-ETL-Project

## Overview
This project demonstrates a complete ETL (Extract, Transform, Load) process for healthcare data, focusing on stroke prediction. The project involves data extraction, cleaning, transformation, handling imbalanced data, and finally loading the cleaned data into a designated location for further analysis or deployment.

## Table of Contents
- [Project Structure](#project-structure)
- [Data Description](#data-description)
- [ETL Process](#etl-process)
  - [Extraction](#extraction)
  - [Transformation](#transformation)
  - [Loading](#loading)
- [Handling Imbalanced Data](#handling-imbalanced-data)
- [Visualizations](#visualizations)
- [Installation](#installation)
- [Usage](#usage)

## Project Structure


## Data Description
The dataset used in this project contains healthcare-related information, including features like age, gender, BMI, glucose levels, and smoking status, with a target variable indicating whether the patient had a stroke.

Key features:
- `age`
- `gender`
- `hypertension`
- `heart_disease`
- `ever_married`
- `work_type`
- `Residence_type`
- `avg_glucose_level`
- `bmi`
- `smoking_status`
- `stroke` (target variable)

## ETL Process
### Extraction
Data is extracted from a CSV file (`raw_healthcare_data.csv`) located in the `Data/` directory.

### Transformation
The transformation steps include:
- Data cleaning: Removing unnecessary columns, handling missing values, and filtering data.
- Feature engineering: Creating new features like `age_group` and `bmi_category`.
- Balancing the dataset using SMOTE to handle class imbalance.

### Loading
The transformed and balanced dataset is saved as `balanced_healthcare_data.csv` in the `Load/` directory for further analysis or model training.

## Handling Imbalanced Data
The target variable (`stroke`) was imbalanced, so we used SMOTE (Synthetic Minority Over-sampling Technique) to create a balanced dataset.

## Visualizations
The project includes visualizations to explore the data and understand the relationships between features, including:
- Bar plots comparing stroke occurrences across different age groups and BMI categories.
- Correlation heatmaps to visualize the relationship between features.
- Histograms showing the distribution of glucose levels and BMI


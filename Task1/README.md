# Task 1: Dataset Cleaning – Netflix Titles

This task focuses on cleaning the Netflix Titles dataset for further analysis and visualization.

## Files Included

- `netflix_titles.csv`: Original dataset
- `cleaning_script.py`: Python script for preprocessing and cleaning
- `cleaned_netflix_titles.csv`: Output after cleaning
- `README.md`: Description and cleaning summary

## Summary of Cleaning Performed

1. **Removed duplicates** to ensure data uniqueness.
2. **Dropped rows** with missing values in key columns like `director`, `cast`, `country`, and `release_year`.
3. **Cleaned column names** by converting to lowercase and replacing spaces with underscores.
4. **Converted date fields** like `date_added` into proper datetime format.
5. **Split `duration`** column into two new columns: `duration_value` and `duration_unit` for clarity.

## 🛠️ Tools Used

- Python 3.9+
- Pandas


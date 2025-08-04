import pandas as pd

# Load dataset
df = pd.read_csv("netflix_titles.csv")

# 1. Initial info
print("Initial shape:", df.shape)
print(df.head(3))

# 2. Standardize column names: lowercase, underscores
df.columns = [col.lower().strip().replace(" ", "_") for col in df.columns]

# 3. Remove duplicates
df = df.drop_duplicates()

# 4. Handle missing values: print count
print("\nMissing values:\n", df.isnull().sum())

# Optionally drop rows with too many nulls in key fields
df = df.dropna(subset=["title", "type", "release_year"])

# 5. Strip text columns (removes weird spacing)
text_cols = ["title", "director", "cast", "country", "rating", "listed_in", "description"]
for col in text_cols:
    if col in df.columns:
        df[col] = df[col].astype(str).str.strip()

# 6. Convert 'date_added' to datetime
df["date_added"] = pd.to_datetime(df["date_added"], errors='coerce')

# 7. Split 'duration' into numeric + unit
df["duration"] = df["duration"].astype(str).str.strip()
df[["duration_value", "duration_unit"]] = df["duration"].str.extract(r"(\d+)\s*(\w+)", expand=True)
df["duration_value"] = pd.to_numeric(df["duration_value"], errors='coerce')

# 8. Save cleaned file
df.to_csv("cleaned_netflix_titles.csv", index=False)

# 9. Summary
print("\nCleaning done.")
print("Final shape:", df.shape)
print(df.head(3))

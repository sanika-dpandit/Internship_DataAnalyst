# Superstore Sales Analysis – Power BI Dashboard

A dynamic Power BI dashboard project built using the Superstore Sales dataset from Kaggle. This project visualizes sales, profit, and performance insights across categories, segments, regions, and time — enabling clear, actionable business decisions.

## Dataset Source

- **Dataset**: [Superstore Sales Dataset - Kaggle](https://www.kaggle.com/datasets/vivek468/superstore-dataset-final)
- The dataset contains ~10,000 records of sales transactions including:
  - Order details
  - Ship mode and customer info
  - Product categories
  - Profit and discount

## Visualizations

This Power BI report includes:

### 1. **Sales by Category**
> *Technology drives the highest sales, followed by Furniture. Office Supplies contributes the least — could be a focus for promotions.*

- Visual Type: Clustered Bar Chart
- Fields: `Category` (Axis), `Sales` (Values)

### 2. **Profit by Segment**
>  *The Consumer segment is the most profitable. The Corporate segment follows, while Home Office lags behind.*

- Visual Type: Stacked Column Chart
- Fields: `Segment` (Axis), `Profit` (Values)

### 3. **Monthly Sales Trend**
> *Sales peak during November and December — likely due to the holiday season. August is relatively low.*

- Visual Type: Line Chart
- Fields: `Order Date` (Month-Year on Axis), `Sales` (Values)

### 4. **Profit by Sub-Category**
> *Copiers and Phones are the most profitable. Tables result in high losses and should be re-evaluated.*

- Visual Type: Bar Chart
- Fields: `Sub-Category` (Axis), `Profit` (Values), sorted descending

## Summary Slide

**Top 3 Insights**:

- Technology leads sales across all regions.
- Sales peak during (Nov-Dec).
- Consumer segment brings highest profit.

**Suggestions**:

- Promote Office Supplies using discount bundles.
- Investigate unprofitable sub-categories like Tables.
- Focus marketing efforts on peak months.

## Tools Used
- **Power BI Desktop**
- **Kaggle for dataset**
- **GitHub for versioning**




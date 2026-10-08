# Football Transfer Analysis Using Association Rule Mining

### Discovering Patterns in Premier League Transfers with Python and R

**Technologies:** Python · R · pandas · arules · arulesViz · ggplot2  
**Methods:** Data Preprocessing · Quantile-Based Discretization · Association Rule Mining · Apriori Algorithm

[**View Full Analysis on RPubs →**](https://rpubs.com/Fluorek/1392068)

---

## Project Overview

This project explores patterns in Premier League football transfers using **Association Rule Mining (ARM)**. The analysis aims to identify relationships between player characteristics, performance statistics, and transfer-related attributes.

The project combines Python for data preprocessing with R for association rule extraction, evaluation, and visualization. The **Apriori algorithm** is applied to discover frequently occurring combinations of attributes without assuming causal relationships.

## Dataset

The dataset covers transfers into and out of the **English Premier League across the 2010–2025 seasons**, using data collected from Transfermarkt and FBref.

It includes approximately **2,025 transfer records** described by 11 features, including:

- **Player characteristics:** age, height, nationality continent, dominant foot, and playing position.
- **Performance indicators:** matches played, goals scored, and yellow cards.
- **Transfer context:** transfer season, homegrown status, and previous participation in European competitions.

## Methodology

**1. Data Preprocessing (Python)**

- Transformed binary indicators into categorical variables.
- Combined mutually exclusive binary columns into single categorical features.
- Discretized numerical attributes using quantile-based binning.
- Prepared the dataset for transaction-based analysis.

**2. Association Rule Mining (R)**

- Converted categorical data into transaction format using the `arules` package.
- Applied the Apriori algorithm with minimum support of 0.10 and confidence of 0.60.
- Generated **416 association rules** satisfying the specified thresholds.

**3. Rule Evaluation & Visualization**

- Evaluated rules using support, confidence, and lift.
- Compared frequent patterns with more distinctive associations.
- Visualized the results using support–confidence scatter plots and parallel coordinates.

## Key Findings

- **416 association rules** were discovered, revealing recurring combinations of player and transfer characteristics.
- Rules with the highest confidence primarily reflected the prevalence of European players, particularly among homegrown transfers.
- Lift-based analysis identified more distinctive relationships between limited playing time, low goal output, and disciplinary statistics.
- The strongest rule achieved a **lift of approximately 2.69**, indicating a substantially higher co-occurrence than expected under independence.
- Comparing confidence and lift demonstrated why rule frequency alone is insufficient for identifying informative associations.

## Tools & Libraries

| Technology | Purpose |
|---|---|
| Python / pandas | Data cleaning and feature transformation |
| R | Association rule mining and statistical analysis |
| arules | Apriori algorithm and rule evaluation |
| arulesViz | Association rule visualization |
| ggplot2 | Statistical visualization |

## Full Report

The complete analysis, including preprocessing examples, association rule outputs, visualizations, and detailed interpretation, is available on RPubs.

**[Read the Full Project Report →](https://rpubs.com/Fluorek/1392068)**

---

*This project demonstrates an end-to-end exploratory data mining workflow, combining data preparation, pattern discovery, quantitative evaluation, and interpretation of results.*

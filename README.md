# E-commerce-store Order Analysis - Project Overview
The goal of this project is to analyse the performance of E-commerce orders across differect countries, to provide insights and bring growth to the business. 

## Dataset Structure
The dataset consisted of a table including Customer ID, Prices of items, Description of item, Country of order, Invoice number and Invoice dates.

![DataType](https://github.com/kekewhite/Online-repository/blob/main/Github%20database/Pictures/Ecommerce%20data%20types.png)

## Initial Checks
Checklist
Data Type Formatting (Dates, Numbers and Time)
Removing Duplicates
Column Stats Check
Nulls

The data in the  E-commerce table contained Null values for a few Item_ids.


## Dashboard
The excel dashboard can be found [here](https://github.com/kekewhite/E-commerce-store-project/blob/main/dashboard/ECOMMERCE%20EXCEL%20DASHBOARD.xlsx).
![Dashboard](https://github.com/kekewhite/Online-repository/blob/main/Github%20database/Pictures/Ecommerce%20data%20dashboard%20.png)

## Insights Summary
The business demonstrates strong sales performance, healthy repeat customer behaviour and strong product demand. However, revenue remains highly concentrated among a few customers, products and the UK market, creating some level of dependency risk for long-term growth.
The business generated approximately $8.89M in revenue from about 18.5k items sold across 3.8k orders and 4.3k customers. The store shows strong repeat purchase behaviour with an average of 4.3 orders per customer, indicating healthy customer retention and engagement.

The United Kingdom contributed the majority of total revenue with approximately $7.29M, making it the strongest market by both sales and order volume.

## Recommendations
While some orders contain unknown items, they have been excluded from the analysis breakdown, but are shown in the tables and orders trend analysis. 
It would be advisable to protect inventory for the top 20 products
• build a VIP watchlist for the top revenue customers
• devise a purchase campaign timing towards the midday buying window
• prepare and secure Q4 stock much earlier.



## Written Code
The python queries used to inspect and clean the data for this analysis can be found here [link](https://github.com/kekewhite/E-commerce-store-project/blob/main/notebooks/Ecommerce.ipynb).


## Assumptions and Caveats:
Throughout the analysis, multiple assumptions were made to manage challenges with the data. These assumptions and caveats are noted below:

* Missing data were not analysed, and orders with Customer IDs containing Nulls were not analysed.
 
*Duplicate orders were not analysed
 

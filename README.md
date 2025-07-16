Netflix Dashboard with SQL & Power BI
An interactive data visualization project that analyzes Netflix’s global content using SQL for data processing and Power BI for dashboard creation. This project provides insights into title distribution by country, release trends, content type, ratings, and more.

📌 Table of Contents
About the Project

Features

Tools & Technologies

Dataset

How I Built It

Screenshots

How to Use

Future Improvements

Author

📝 About the Project
This project visualizes Netflix titles data from 1942 to 2021, providing insights on:

Content distribution across countries

Release year patterns and spikes

Movie vs. TV Show analysis

Ratings and durations

Most featured directors and titles

The goal was to practice data cleaning in SQL and storytelling in Power BI using real-world data.

🔍 Features
🌍 Map View of content by country

📆 Time Series of titles by release year

🍿 Donut Chart of content type (Movies vs TV Shows)

🎬 Top Titles by rating, duration, and director

🧭 Filters for country and ratings

🎯 Responsive visuals and interactive slicers

🛠 Tools & Technologies
SQL – Data preprocessing and filtering

Power BI – Visualization and dashboard design

Microsoft Bing Maps – Country visualization

Netflix Titles Dataset – Source data (from Kaggle or similar)

📂 Dataset
Source: https://github.com/mahammzahid/netflix-analysis/blob/main/netflix_titles.csv.zip

Records: 8,000+ rows

Columns include: title, country, type, release_year, duration, rating, director, etc.

🧱 How I Built It
Cleaned & filtered data using SQL (MySQL)

Imported the cleaned data into Power BI

Created relationships and data model

Designed the dashboard with maps, cards, and charts

Added slicers and filters for interactivity

🚀 How to Use
Clone the repository:
https://github.com/mahammzahid/netflix-analysis.git
Import the dataset into your SQL environment and run cleaning queries (SQL script included).

Open Netflix_Dashboard.pbix in Power BI Desktop.

Explore and interact with the dashboard.

💡 Future Improvements
Add genre-based analysis

Implement time-based filtering for specific decades

Include more KPIs like average movie duration or ratings trend

Connect Power BI to live database


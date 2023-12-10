# IEOR4501 Project
 Project for IEOR4501
 
Overview: This project focuses on analyzing New York City neighborhoods to assist individuals in finding suitable areas to live in. It leverages NYC Open Data and Zillow's historic rent data to process, store, and analyze neighborhood data.

First Step: We download data from NYC Open Data and Zillow. Then, we clean and preprocess the data using Pandas and GeoPandas, filtering irrelevant data, normalizing column names, and ensuring data consistency.

Second Step: We focus on storing Data by creating a PostgreSQL database and populate it with the preprocessed data. Then, we ensure spatial data is correctly integrated using PostGIS.

Third Step: We focus on analyzing data by performing SQL queries to understand various aspects of NYC neighborhoods such as calmness, greenery levels, and affordability. Then, we analyze the data to identify potential correlations between different factors.

Last Step: we focus on visualizing data by utilizing Python libraries like Matplotlib to create visualizations.

By doing this, we are supposed to identify calm, green, and affordable neighborhoods in New York City by analyzing and visualizing data from NYC Open Data and Zillow.
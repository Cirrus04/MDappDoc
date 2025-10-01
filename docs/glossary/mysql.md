What is MySQL?
MySQL is one of the world's most popular open-source Relational Database Management Systems (RDBMS). A database is an organized collection of data, and an RDBMS is the software used to create, manage, and interact with that database using the SQL (Structured Query Language).
How is it used in this application?
MySQL serves as the central data storage for the MarketData Analyzer. All the financial data downloaded from EODHD—including symbol information, historical prices, splits, and dividends—is stored in a structured way within MySQL tables.
Key Concepts:
Database: The main container for all our related data (e.g., md_production).
Tables: Data is organized into tables, which are like spreadsheets with rows and columns. For example, we have tables like tSymbol (for company information) and tPrice_ST (for daily prices on the Stockholm exchange).
Columns: Each table has columns that define the type of data being stored (e.g., ticker is a string of text, intraday is a date, adjustedClose is a decimal number).
Rows: Each row in a table represents a single record (e.g., the price data for one stock on one specific day).
SQL (Structured Query Language): This is the language we use to communicate with the database. Our PHP and shell scripts generate SQL statements to perform actions like:
SELECT: Retrieve data from tables.
INSERT: Add new data to tables.
UPDATE: Modify existing data in tables.
DELETE: Remove data from tables.
Stored Procedures: Complex SQL logic (like the calculation for StockDailyMetrics) can be saved as a "stored procedure" directly in the database. This allows our application to execute a complex task by making a single, simple call to the procedure.
In this project, MySQL is the backbone that holds all the historical price data and the calculated technical indicators, allowing the web application to quickly query and display the information you see in the charts and tables.
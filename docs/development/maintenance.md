# Maintenance Guide

This document outlines common maintenance tasks for the MarketData Analyzer application, including daily operations, data correction, and troubleshooting.

## 1. Daily Operations (Automated via Cron)

Detta är ett test[^1].

The application is designed to be self-maintaining through a nightly cron job that runs the **load.sh** script.

<pre>
<code>
00 10 * * 2-6 /usr/bin/bash /var/www/html/MD/SH/load.sh ALL >> /var/www/html/MD/LOG/logfile.log 2>&1
</code>
</pre>

This script performs the following key tasks automatically:

- Downloads new symbols and delisted symbols from EODHD.
- Downloads the latest daily prices, splits, and dividends.
- Calculates and updates technical indicators (Adjusted Close, SMA, EMA, MACD, etc.) for the new data.
- Pre-calculates summary tables (`Stock Metrics`, `Steep Slope`, `Golden & Death CrossX`, etc.) for fast front-end performance.

The cron job should be configured to run **after the stock market closes and EODHD has updated its daily data**.

### Monitoring
It is recommended to periodically review the log files located in the **LOG/** directory to ensure the nightly cron jobs are completing successfully.

## 2. Handling Data Errors and Reloading

Occasionally, the source data from EODHD may contain errors (e.g., incorrect split application, erroneous prices). The application has built-in features to correct this data.

### Scenario A: Reloading Full Price History for a Single Symbol

This is the most common maintenance task, used after EODHD has confirmed a data correction for a specific symbol.

**Step 1: Reload Price History**

Run the **load.sh** script with the **PricesDL** step, specifying the symbol and exchange with the **-s** and **-e** flags. This will delete the old price history for the symbol and replace it with the fresh, corrected data from the API.

#### Example: Reload full history for SAAB-B on the ST exchange
<pre><code>./load.sh -s SAAB-B -e ST PricesDL</code></pre>

**Step 2: Recalculate All Indicators for that Symbol**

After reloading the price history, you must recalculate all dependent indicators from scratch for that symbol. Start the script from the calcAdjustedClose step.

#### Example: Recalculate all indicators for SAAB-B

<pre><code>./load.sh -s SAAB-B -e ST SMACALC
./load.sh -s SAAB-B -e ST EMACALC
./load.sh -s SAAB-B -e ST MACD
./load.sh -s SAAB-B -e ST RSI
./load.sh -s SAAB-B -e ST BBandADX</code></pre>

This will run through SMA, EMA, MACD, RSI and Bollinger Bands and ADX calculation steps for only SAAB-B.

### Scenario B: Forcing a Full Recalculation for All Symbols

This is a more drastic step and should only be used if there has been a major data issue affecting many symbols or a change in the calculation logic itself.

**Note!** This process can take a significant amount of time.

Use the **-f** (full recalculation) flag and specify the starting step.

#### Example: Force a full recalculation of all EMAs for all exchanges

<pre><code>./load.sh -f EMACALC</code></pre>

#### Example: Force a full recalculation of EVERYTHING from the beginning

<pre><code>./load.sh -f ALL</code></pre>


Modify the SQL file containing the stored procedure definition (e.g., _ALL_SQL_STATEMENTS.sql).

Connect to the database using a client like MySQL Workbench.

DROP the old procedure and re-create it by running the updated CREATE PROCEDURE script.
After updating the schema or procedures, it is often necessary to run a full recalculation (see Scenario B above) to populate the new columns.

## 4. Troubleshooting

- Problem: Cron job fails.
    - Solution: Check the log file (LOG/logfile.log and the date-stamped load_YYYYMMDD.log). The error is most often related to PATH environment variables or database connection issues. Verify that the PATH is set correctly at the top of load.sh.
- Problem: A specific indicator (e.g., MACD) is NULL for a stock.
    - Solution: This usually means the stock doesn't have enough historical data to compute the indicator (e.g., fewer than 26 days of data for MACD). This is expected for newly listed stocks. If the stock has a long history, it may indicate a problem in the calculation logic for that specific symbol. Run a single-symbol recalculation in debug mode (-d) to see detailed logs.
- Problem: The front-end website is not loading (403 Forbidden error).
    - Solution: This is a file permissions issue on the web server. Ensure the Apache user (www-data or apache) has execute permissions on the entire directory path leading to the application and read permissions on the files. If using SELinux, ensure the correct security context (httpd_sys_content_t) is applied to the web directory.
    -
[^1]: Detta är fotnoten.
# StreamFlix SQL Analysis

## Project Overview

StreamFlix is a fictional streaming service used for this SQL data analysis project. The aim of the project was to analyse subscriber information, subscription revenue, available shows and viewing activity to answer business questions and identify useful insights.

The analysis was completed using SQL in SQLite, covering 19 queries involving data filtering, aggregation, grouping, joins, subqueries, CASE statements and data quality.

## Author

**Name:** Uwaiz Lovell

**Cohort:** 2026-ds-jan-cohort

**Course:** SQL for Data Analysis — Project 1 

**Academy:** Melsoft Academy

## Database Structure

The database contains three tables:

| Table | Description |
|---|---|
| `users` | Contains subscriber details, including country, age, subscription plan, monthly price and account status. |
| `shows` | Contains the streaming catalogue, including show titles, genres, release years, ratings and durations. |
| `views` | Contains viewing history, including the subscriber, show watched, viewing date, minutes watched and device used. |

The tables are connected through their IDs. The `views` table links to `users` through `user_id` and to `shows` through `show_id`.

## Project Files

| File | Description |
|---|---|
| `streamflix_setup.sql` | Creates and populates the database tables. |
| `analysis.sql` | Contains all 19 numbered SQL queries. |
| `FINDINGS.md` | Presents the business findings and recommendations. |
| `PROCESS.md` | Documents the project approach, challenges and workflow. |
| `README.md` | Provides an overview of the project and its contents. |

## How to Run the Project

1. Open SQLite Online or another compatible SQL environment.
2. Run the entire `streamflix_setup.sql` file to create and populate the database.
3. Run the queries in `analysis.sql` to reproduce the analysis.

## Key Findings

1. **Revenue:** Premium generates the highest active monthly revenue at R796, compared with Basic at R297 and Standard at R149. Total active monthly revenue is R1,242.
2. **Churn:** Standard has the highest churn rate at 75%, while Premium has a churn rate of 0%.
3. **Engagement:** Drama leads viewing activity with 654 minutes watched, and Township Tales is the most-watched show with five plays.

## Skills Demonstrated

- SQL SELECT statements and filtering using WHERE.
- Aggregate functions such as COUNT, SUM and AVG.
- GROUP BY, HAVING and ORDER BY.
- INNER JOIN and LEFT JOIN.
- Subqueries.
- CASE statements.
- Handling NULL values.
- Data cleaning using LOWER().
- Revenue, churn and engagement analysis.
- Git and GitHub version control.

## Repository

[View the StreamFlix SQL Analysis repository](https://github.com/UwaizLovell/streamflix-sql-analysis)

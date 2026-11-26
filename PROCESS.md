# StreamFlix SQL Project — Process Journal

## 1. Project Approach

I started by reviewing the project brief to understand the required tasks, database structure and expected deliverables.

I used SQLite Online to run the provided `streamflix_setup.sql` file, which created and populated the three database tables: `users`, `shows` and `views`.

I then created my GitHub repository, `streamflix-sql-analysis`, and opened the project folder in Visual Studio Code.

I used SQLite Online to test each SQL query individually before adding the working query to `analysis.sql` in Visual Studio Code. This allowed me to check the results against the project brief and its checkpoints before committing my work.

I completed the original 18 questions in order, covering filtering, aggregate functions, grouping, joins, subqueries, CASE statements and data quality.

After receiving additional feedback from my lecturer, I added Q19 to calculate monthly revenue from active subscribers for each plan. This provided a clearer comparison of which subscription plan generated the most revenue.

## 2. Challenges and How I Addressed Them

### Handling missing values

The database contained missing age values and one show with a NULL rating. I learned that missing values need to be checked using `IS NULL` rather than comparing them with `= NULL`.

I used `IS NULL` to identify users with missing ages and made a note that the average rating calculation excluded the show without a rating.

### Grouping and summarising data

Some questions required results to be grouped by plan, genre, device or country. I used GROUP BY to calculate these results and HAVING when filtering grouped results, such as finding genres with more than two shows.

### Combining database tables

Questions about viewing activity required information from more than one table. I used JOIN statements to connect views with users and shows through their matching IDs.

For the question about users who had never watched anything, I used a LEFT JOIN and checked for NULL view IDs.

### Subqueries and CASE statements

I used a subquery to compare subscription prices against the average monthly price. I also used CASE to calculate churn rates and categorise shows according to their ratings.

### Understanding revenue by subscription plan

The original revenue question showed total monthly revenue from active subscribers, but it did not show which plan contributed the most.

Following my lecturer's feedback, I added an additional query to calculate active monthly revenue separately for each plan. This showed that Premium generated the highest monthly revenue.

### Understanding the limits of the data

The analysis identified that all three users who never watched anything were cancelled subscribers. However, this did not prove why they cancelled.

Following my lecturer's guidance, I recognised that additional information such as cancellation surveys, login activity, support tickets and payment issues would be needed to investigate the reasons behind cancellations.

## 3. Tools and Workflow

The tools used during this project were:

- **SQLite Online:** To create the database, execute SQL queries and verify results.
- **Visual Studio Code:** To write, organise and save the completed queries in `analysis.sql`.
- **Git and GitHub:** To track progress, commit changes and maintain the project repository.
- **ChatGPT:** Used as a learning assistant to explain SQL concepts, guide troubleshooting and help me understand query results.

I followed a test-before-commit workflow. After confirming that a query ran and returned the expected result, I added it to the project file and committed the change to GitHub.

## 4. Project Completion

I completed all 18 original SQL questions and added Q19 following my lecturer's feedback.

I checked the query results against the checkpoints provided in the brief and prepared the business findings report to explain what the results mean for StreamFlix.

The project helped me practise writing SQL queries and understand how to use database results to answer business questions.

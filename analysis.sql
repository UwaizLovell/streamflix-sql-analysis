-- ============================================================
-- StreamFlix SQL Project 1 — Analysis
-- ============================================================

-- Section A: Foundations

-- Q1. All Premium users' names.
SELECT full_name
FROM users
WHERE plan = 'Premium';

-- Q2. All users whose age is missing.
SELECT full_name
FROM users
WHERE age IS NULL;


-- Q3. StreamFlix's total monthly revenue from active users.
SELECT SUM(monthly_price) AS total_monthly_revenue
FROM users
WHERE is_active = 1;


-- Q4. Average show rating.
-- 1 show was skipped because its rating is NULL.
SELECT AVG(rating) AS average_show_rating
FROM shows;


-- Section B: Grouping & filtering groups

-- Q5. Number of users on each plan.
SELECT plan, COUNT(*) AS total_users
FROM users
GROUP BY plan;

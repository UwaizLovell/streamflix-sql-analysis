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


-- Q6. Average rating per genre, ordered best to worst.
SELECT genre, AVG(rating) AS average_rating
FROM shows
GROUP BY genre
ORDER BY average_rating DESC;


-- Q7. Only the genres that have more than 2 shows.
SELECT genre, COUNT(*) AS total_shows
FROM shows
GROUP BY genre
HAVING COUNT(*) > 2;


-- Q8. Average minutes watched per device, highest first.
SELECT device, AVG(minutes_watched) AS average_minutes
FROM views
GROUP BY device
ORDER BY average_minutes DESC;


-- Section C: JOINs

-- Q9. Each view shown with the user's name and the show's title.
SELECT u.full_name, s.title, v.minutes_watched
FROM views v
JOIN users u ON v.user_id = u.user_id
JOIN shows s ON v.show_id = s.show_id;


-- Q10. Total minutes watched per genre.
SELECT s.genre, SUM(v.minutes_watched) AS total_minutes
FROM views v
JOIN shows s ON v.show_id = s.show_id
GROUP BY s.genre
ORDER BY total_minutes DESC;


-- Q11. The single most-watched show by number of plays.
SELECT s.title, COUNT(*) AS total_plays
FROM views v
JOIN shows s ON v.show_id = s.show_id
GROUP BY s.title
ORDER BY total_plays DESC
LIMIT 1;


-- Q12. Number of views per plan.
SELECT u.plan, COUNT(*) AS total_views
FROM views v
JOIN users u ON v.user_id = u.user_id
GROUP BY u.plan
ORDER BY total_views DESC;


-- Q13. Top 3 most-engaged users by total minutes watched.
SELECT u.full_name, SUM(v.minutes_watched) AS total_minutes
FROM views v
JOIN users u ON v.user_id = u.user_id
GROUP BY u.full_name
ORDER BY total_minutes DESC
LIMIT 3;


-- Q14. Users who have never watched anything.
SELECT u.full_name
FROM users u
LEFT JOIN views v ON u.user_id = v.user_id
WHERE v.view_id IS NULL;


-- Q15. Users who pay more than the average monthly price.
SELECT full_name, monthly_price
FROM users
WHERE monthly_price > (SELECT AVG(monthly_price) FROM users);

-- Q16. Churn rate by plan.
SELECT plan,
       ROUND(100.0 * SUM(CASE WHEN is_active = 0 THEN 1 ELSE 0 END) / COUNT(*), 1) AS churn_pct
FROM users
GROUP BY plan;


-- Q17. Count users per country, treating both South Africa spellings as one.
SELECT LOWER(country) AS country, COUNT(*) AS total_users
FROM users
GROUP BY LOWER(country);


-- Q18. Label each show according to its rating.
SELECT title,
       CASE
           WHEN rating >= 8 THEN 'Highly rated'
           WHEN rating < 8 THEN 'Average'
           ELSE 'Not rated yet'
       END AS rating_category
FROM shows;
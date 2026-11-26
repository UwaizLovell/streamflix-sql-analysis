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


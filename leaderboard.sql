/*
-------------------------------------------------------
 ScoreRank Engine
 Dense Leaderboard Ranking
-------------------------------------------------------

This query generates a leaderboard where:

1. Higher scores appear first.
2. Equal scores receive the same rank.
3. Rankings remain consecutive (no gaps).

Example:

Score   Rank
-----   ----
4.00     1
4.00     1
3.85     2
3.65     3
3.65     3
3.50     4
*/

SELECT
    score,
    DENSE_RANK() OVER (
        ORDER BY score DESC
    ) AS `rank`
FROM Scores
ORDER BY score DESC;

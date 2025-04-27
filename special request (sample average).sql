#special request with comparison with the sample average (for the average financial threshold and other standard criteria)

SELECT *
FROM (SELECT *,
        AVG((profit1 + profit2 + profit3) / 3) OVER() AS overall_avg_profit
    FROM table_a a
    WHERE Net assets > 0) AS t
WHERE (profit1 + profit2 + profit3) / 3 > overall_avg_profit
  AND (profit1 + profit2 + profit3) / 3 > 60;

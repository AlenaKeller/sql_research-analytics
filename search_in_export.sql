#search for acceptances in the export database
## search for acceptances of a similar research benchmarking in the export database
### this is necessary to analyze the reason for the lack of potential acceptances in the final sample

SELECT a.*
FROM table_a a
INNER JOIN table_b b ON a.key_column = b.key_column;
ORDER BY a.some_column;

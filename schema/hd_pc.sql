SELECT
   hd
FROM
   pc
GROUP BY
   hd
HAVING
   COUNT(model) >= 2
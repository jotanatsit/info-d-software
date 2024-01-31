SELECT
   p.maker,
   lt.speed
FROM
   products p
   LEFT JOIN product_type pt ON p.type = pt.product_type_id
   LEFT JOIN laptop lt ON pt.product_type_id = lt.product_type_id
WHERE
   lt.HD >= 30
ORDER BY
   p.product_id
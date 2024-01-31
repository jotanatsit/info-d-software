SELECT
   p.model,
   COALESCE(pc.price, lt.price, pter.price, "-") AS price
FROM
   products p
   LEFT JOIN product_type pt ON p.type = pt.product_type_id
   LEFT JOIN pc ON pt.product_type_id = pc.product_type_id
   LEFT JOIN laptop lt ON pt.product_type_id = lt.product_type_id
   LEFT JOIN printer pter ON pt.product_type_id = pter.product_type_id
WHERE
   p.maker = 'B'
ORDER BY
   p.product_id;
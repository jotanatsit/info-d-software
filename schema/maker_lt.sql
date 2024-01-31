SELECT
   p.maker
FROM
   products p
   LEFT JOIN product_type pt ON p.type = pt.product_type_id
   LEFT JOIN laptop lt ON pt.product_type_id = lt.product_type_id
WHERE
   p.type = lt.product_type_id
   AND NOT EXISTS (
      SELECT
         p.maker
      FROM
         products p
         LEFT JOIN product_type pt ON p.type = pt.product_type_id
         LEFT JOIN pc ON pt.product_type_id = pc.product_type_id
      WHERE
         p.type = pc.product_type_id
   )
ORDER BY
   p.product_id
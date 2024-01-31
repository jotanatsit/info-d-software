SELECT
   pc1.model,
   pc2.model
FROM
   pc pc1
   LEFT JOIN pc pc2 ON pc1.pc_id = pc2.pc_id
WHERE
   pc1.speed = pc2.speed
   AND pc1.ram = pc2.ram
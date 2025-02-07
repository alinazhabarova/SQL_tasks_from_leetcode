WITH summ_amount AS (
	SELECT 
	  client, 
    sum(CASE WHEN o.type = 'in' THEN amount ELSE 0 END) -
  	sum(CASE WHEN o.type = 'out' THEN amount ELSE 0 END) AS total_summ
  FROM oper o
  WHERE o.date <= '2023-07-07'
  GROUP BY client)
    
SELECT COUNT(*)
FROM summ_amount
WHERE total_summ > 500;

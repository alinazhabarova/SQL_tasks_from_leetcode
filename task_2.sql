SELECT 
	  c.fio,
    SUM(summa_usd) AS total_sum,
    max(date) AS last_date
FROM client c
JOIN account a ON a.account_num = c.account_num
WHERE region = 'Москва'
GROUP BY a.account_num, c.fio
HAVING sum(summa_usd) >= 20000::money;

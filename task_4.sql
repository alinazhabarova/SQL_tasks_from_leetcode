-- Первый вариант

WITH numeration_str AS (
  SELECT
		ROW_NUMBER() over (PARTITION BY client ORDER BY date) AS first_act,
  	actions,
  	date
  FROM events)

SELECT 
  date, 
  actions 
FROM numeration_str 
WHERE first_act = 1;

--Второй вариант

SELECT DISTINCT ON (client)
    date AS first_action_date,
    actions AS first_action
FROM events
ORDER BY 
  client, 
  date;

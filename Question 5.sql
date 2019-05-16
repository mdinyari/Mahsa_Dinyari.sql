SELECT COUNT(DISTINCT user_id) AS '# of visitors making purchase'
FROM page_visits
WHERE page_name = '4 - purchase';

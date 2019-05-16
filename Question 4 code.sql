WITH last_touch AS (
	SELECT user_id, 
		MAX(timestamp) AS last_touch_at
	FROM page_visits
	GROUP BY user_id)
SELECT lt.user_id,
	lt.last_touch_at, 
	pv.utm_source, 
	pv.utm_campaign,
	COUNT(utm_campaign)
FROM last_touch lt
JOIN page_visits pv
	ON lt.user_id = pv.user_id
	AND lt.last_touch_at = pv.timestamp
GROUP BY utm_campaign
ORDER BY 5 DESC;

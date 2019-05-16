WITH first_touch AS (
SELECT user_id, 
		MIN(timestamp) AS first_touch_at
	FROM page_visits
	GROUP BY user_id)
SELECT ft.user_id,
	ft.first_touch_at, 
	pv.utm_source, 
	pv.utm_campaign,
	COUNT(utm_campaign)
FROM first_touch ft
JOIN page_visits pv
	ON ft.user_id = pv.user_id
	AND ft.first_touch_at = pv.timestamp
GROUP BY utm_campaign
ORDER BY 5 DESC;

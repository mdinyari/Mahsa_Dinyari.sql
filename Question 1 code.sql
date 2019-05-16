SELECT COUNT(distinct utm_campaign)
FROM page_visits;

SELECT COUNT(distinct utm_source)
FROM page_visits;

SELECT DISTINCT utm_campaign, utm_source
FROM page_visits;

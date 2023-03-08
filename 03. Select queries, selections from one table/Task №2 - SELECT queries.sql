SELECT name, year_release
FROM album
WHERE year_release = 2018;

SELECT name, duration
FROM track
ORDER BY duration DESC
LIMIT 1;

SELECT name, duration
FROM track
WHERE duration >= 210
ORDER BY duration;

SELECT name
FROM collection
WHERE 2018 <= year_release AND year_release <= 2020;

SELECT name 
FROM performer
WHERE name NOT LIKE '% %';

SELECT name 
FROM track
WHERE name LIKE '%My%' 
	OR name LIKE '%Мой%'
	OR name LIKE '%my%' 
	OR name LIKE '%мой%';
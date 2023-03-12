-- 1. Количество исполнителей в каждом жанре.	
SELECT name_genre AS ng, count(performer_id)
FROM music_genre AS mg
JOIN genre_performer AS gp ON mg.music_genre_id = gp.music_genre_id
GROUP BY ng
ORDER BY count DESC;
-- 2. Количество треков, вошедших в альбомы 2019–2020 годов.
SELECT count(name_album)
FROM track AS t 
JOIN album AS a ON t.album_id = a.album_id
WHERE year_release BETWEEN 2018 AND 2020;
-- 3. Средняя продолжительность треков по каждому альбому.
SELECT name_album, avg(duration)
FROM track AS t 
JOIN album AS a ON t.album_id = a.album_id
GROUP BY name_album
ORDER BY avg(duration);
-- 4. Все исполнители, которые не выпустили альбомы в 2020 году.
SELECT name_performer AS np
FROM performer AS p 
JOIN album a ON p.performer_id = a.album_id
WHERE year_release NOT BETWEEN 2020 AND 2020;
-- 5. Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
SELECT name_collection AS nm
FROM collection c
JOIN track_collection AS tc ON c.collection_id = tc.collection_id
JOIN track AS t ON tc.track_id = t.track_id
JOIN album AS a ON t.album_id = a.album_id
JOIN performer_album AS pa ON a.album_id = pa.album_id
JOIN performer AS p ON pa.performer_id = p.performer_id
WHERE name_performer = 'Заточка'
GROUP BY name_collection;
-- 6. Названия альбомов, в которых присутствуют исполнители более чем одного жанра.
SELECT name_album FROM album AS a
JOIN performer_album AS pa ON a.album_id = pa.album_id
JOIN performer AS p ON pa.performer_id = p.performer_id
JOIN genre_performer AS gp ON p.performer_id = gp.performer_id
JOIN music_genre AS mg ON mg.music_genre_id = gp.music_genre_id
GROUP BY name_album
HAVING count(name_genre) > 1;
-- 7. Наименования треков, которые не входят в сборники.
SELECT name_track 
FROM track AS t
LEFT JOIN track_collection AS tc ON t.track_id = tc.track_id 
WHERE collection_id IS NULL;
-- 8. Исполнитель или исполнители, написавшие самый короткий по продолжительности трек, — теоретически таких треков может быть несколько.
SELECT name_performer, name_track, duration 
FROM track AS t
JOIN album AS a ON t.album_id  = a.album_id 
JOIN performer_album AS pa ON a.album_id = pa.album_id 
JOIN performer AS p ON pa.performer_id = p.performer_id 
WHERE duration = (SELECT min(duration) FROM track);
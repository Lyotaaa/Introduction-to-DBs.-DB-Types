INSERT INTO music_genre(music_genre_id, name)
    VALUES (1, 'Кантри-рэп'), 
           (2, 'Панк'), 
           (3, 'Рэп-рок'), 
           (4, 'Индастриал'), 
           (5, 'Хеви-метал');

INSERT INTO performer(performer_id, name)
    VALUES (1, 'Заточка'),
           (2, 'Rammstein'),
           (3, 'Noize MC'),
           (4, 'Oomph'),
           (5, 'Король и Шут'),
           (6, 'Sabaton'),
           (7, 'Eisbrecher'),
           (8, 'Radio Tapok');

INSERT INTO genre_performer(music_genre_id, performer_id)
VALUES (1, 1), (4, 2), (3, 3), (4, 4), (2, 5), (5, 6), (4, 7), (5, 8);

INSERT INTO album(album_id, name, year_release)
VALUES (1, 'Грязное дельце', 2018), (2, 'Liebe Ist Für Alle Da', 2009), (3, 'Царь горы', 2016),
	(4, 'Wahrheit oder Pflicht', 2004), (5, 'Продавец кошмаров', 2006), (6, 'Bismarck', 2019),
	(7, 'Die Hölle muss warten', 2012), (8, 'Наследие', 2022);
	 
INSERT INTO performer_album(performer_id, album_id)
VALUES (1, 1), (2, 2), (3, 3), (4, 4), (5, 5), (6, 6), (7, 7), (8, 8);

INSERT INTO track(track_id, name, duration, album_id)
VALUES (1, 'Мой новый шериф', 229, 1), (2, 'Батя бьёт маму', 202, 1), (3, 'Я люблю кантри', 162, 1),
	(4, 'Ich Tu Dir Weh', 301, 2), (5, 'Frühling in Paris', 284, 2), (6, 'My Pussy', 239, 2),
	(7, 'Make Some Noize', 213, 3), (8, 'чайлдфри', 244, 3), (9, 'Гвозди', 210, 3),
	(10, 'Augen Auf', 200, 4), (11, 'Sex Hat Keine Macht', 259, 4), (12, 'Brennende Liebe', 226, 4),
	(13, 'Свой среди чужих', 249, 5), (14, 'Ром', 161, 5), (15, 'Отражение', 332, 5),
	(16, 'Bismarck', 313, 6),
	(17, 'Verrückt', 201, 7), (18, 'Miststück 2012', 203, 7), (19, 'Tanz Mit Mir', 198, 7),
	(20, 'Черный октябрь', 227, 8), (21, 'Высота 776', 183, 8), (22, 'Жизнь за царя', 218, 8);

INSERT INTO collection(collection_id, name, year_release)
VALUES (1, 'Сборник № 1', 2004), (2, 'Сборник № 2', 2006), (3, 'Сборник № 3', 2009),
	(4, 'Сборник № 4', 2012), (5, 'Сборник № 5', 2016), (6, 'Сборник № 6', 2018),
	(7, 'Сборник № 7', 2019), (8, 'Сборник № 8', 2022);

INSERT INTO track_collection(collection_id, track_id)
VALUES (1, 16), (1, 20), (1, 21), (1, 22),
	(2, 17), (2, 10),
	(3, 4), (3, 18),
	(4, 2), (4, 9),
	(5, 19), (5, 5), (5, 6),
	(6, 1), (6, 3), (6, 7),
	(7, 13), (7, 8), (7, 15),
	(8, 11), (8, 12), (8, 14);
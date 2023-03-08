CREATE TABLE IF NOT EXISTS music_genre(
	music_genre_id SERIAL PRIMARY KEY,
	name VARCHAR(30) NOT NULL
);
CREATE TABLE IF NOT EXISTS performer(
	performer_id SERIAL PRIMARY KEY,
	name VARCHAR(30) NOT NULL
);
CREATE TABLE IF NOT EXISTS genre_performer(
	music_genre_id INTEGER REFERENCES music_genre(music_genre_id),
	performer_id INTEGER REFERENCES performer(performer_id),
	CONSTRAINT genre_performer_pk PRIMARY KEY (music_genre_id, performer_id)
);
CREATE TABLE IF NOT EXISTS album(
	album_id SERIAL PRIMARY KEY,
	name VARCHAR(30) NOT NULL,
	year_release INTEGER NOT NULL
);
CREATE TABLE IF NOT EXISTS performer_album(
	performer_id INTEGER REFERENCES performer(performer_id),
	album_id INTEGER REFERENCES album(album_id),
	CONSTRAINT performer_album_pk PRIMARY KEY (performer_id, album_id)
);
CREATE TABLE IF NOT EXISTS track(
	track_id SERIAL PRIMARY KEY,
	name VARCHAR(30) NOT NULL,
	duration INTEGER NOT NULL,
	album_id INTEGER REFERENCES album(album_id)
);
CREATE TABLE IF NOT EXISTS collection(
	collection_id SERIAL PRIMARY KEY,
	name VARCHAR(30) NOT NULL,
	year_release INTEGER NOT NULL
);
CREATE TABLE IF NOT EXISTS track_collection(
	collection_id INTEGER NOT NULL REFERENCES collection(collection_id),
	track_id INTEGER NOT NULL REFERENCES track(track_id),
	CONSTRAINT track_collection_pk PRIMARY KEY (collection_id, track_id)
);
CREATE TABLE IF NOT EXISTS music_genre(
	id SERIAL PRIMARY KEY,
	name VARCHAR(30) NOT NULL
);
CREATE TABLE IF NOT EXISTS performer(
	id SERIAL PRIMARY KEY,
	name VARCHAR(30) NOT NULL
);
CREATE TABLE IF NOT EXISTS genre_performer(
	music_genre INTEGER REFERENCES music_genre(id),
	performer_id INTEGER REFERENCES performer(id),
	CONSTRAINT genre_performer_pk PRIMARY KEY (music_genre, performer_id)
);
CREATE TABLE IF NOT EXISTS album(
	id SERIAL PRIMARY KEY,
	name VARCHAR(30) NOT NULL,
	year_release INTEGER NOT NULL
);
CREATE TABLE IF NOT EXISTS performer_album(
	performer_id INTEGER REFERENCES performer(id),
	album_id INTEGER REFERENCES album(id),
	CONSTRAINT performer_album_pk PRIMARY KEY (performer_id, album_id)
);
CREATE TABLE IF NOT EXISTS track(
	id SERIAL PRIMARY KEY,
	name VARCHAR(30) NOT NULL,
	duration INTEGER NOT NULL,
	album_id INTEGER REFERENCES album(id)
);
CREATE TABLE IF NOT EXISTS albums_track(
	id SERIAL PRIMARY KEY,
	album_id INTEGER NOT NULL REFERENCES album(id),
	track_id INTEGER NOT NULL REFERENCES track(id)
);
CREATE TABLE IF NOT EXISTS collection(
	id SERIAL PRIMARY KEY,
	name VARCHAR(30) NOT NULL,
	year_release INTEGER NOT NULL,
	albums_track_id INTEGER REFERENCES albums_track(id)
);

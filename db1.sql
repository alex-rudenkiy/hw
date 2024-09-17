CREATE table IF NOT exists Artist ( 
	artist_id SERIAL PRIMARY KEY, 
	name VARCHAR(255) NOT NULL Unique
);

CREATE table IF NOT exists Genre ( 
	genre_id SERIAL PRIMARY KEY, 
	name VARCHAR(255) NOT NULL Unique
);

CREATE table IF NOT exists Track ( 
	track_id SERIAL PRIMARY KEY, 
	title VARCHAR(255) NOT NULL, 
	artist INTEGER REFERENCES Artist(artist_id) NOT NULL, 
	year INTEGER, 
	time INTEGER, 
	plays INTEGER DEFAULT 0, 
	genre INTEGER REFERENCES Genre(genre_id) NOT NULL 
);

CREATE table IF NOT exists Album ( 
	album_id SERIAL PRIMARY KEY, 
	name VARCHAR(255) NOT NULL , 
	artist INTEGER REFERENCES Artist(artist_id), 
	year INTEGER, 
	genre INTEGER REFERENCES Genre(genre_id) NOT NULL
);


CREATE table IF NOT exists Users ( 
	user_id SERIAL PRIMARY KEY, 
	login VARCHAR(255) NOT NULL Unique
);

CREATE table IF NOT exists Listening ( 
	track_id INTEGER REFERENCES Track(track_id) NOT NULL, 
	listener Integer REFERENCES Users(user_id) NOT NULL, 
	playedAt timestamp NOT NULL
);


-- Добавляем данные в таблицу Artist
INSERT INTO Artist (name) VALUES 
('The Beatles'),
('Michael Jackson'),
('Led Zeppelin'),
('Queen'),
('Adele');

-- Добавляем данные в таблицу Genre
INSERT INTO Genre (name) VALUES 
('Rock'),
('Pop'),
('Jazz'),
('Hip-Hop'),
('Classical');

-- Добавляем данные в таблицу Album
INSERT INTO Album (name, artist, year, genre) VALUES 
('Sgt. Pepper''s Lonely Hearts Club Band', 1, 1967, 1),
('Thriller', 2, 1982, 2),
('IV', 3, 1971, 1),
('A Night at the Opera', 4, 1975, 1),
('21', 5, 2011, 2);

-- Добавляем данные в таблицу Track
INSERT INTO Track (title, artist, year, time, plays, genre) VALUES 
('Hey Jude', 1, 1968, 254, 1000, 1),
('Billie Jean', 2, 1983, 421, 2000, 2),
('Stairway to Heaven', 3, 1971, 812, 3000, 1),
('Bohemian Rhapsody', 4, 1975, 555, 4000, 1),
('Someone Like You', 5, 2011, 445, 5000, 2),
('Yesterday', 1, 1965, 205, 6000, 1),
('Beat It', 2, 1982, 418, 7000, 2),
('Whole Lotta Love', 3, 1969, 533, 8000, 1),
('We Will Rock You', 4, 1977, 282, 9000, 1),
('Rolling in the Deep', 5, 2010, 348, 10000, 2);


-- Добавляем данные в таблицу Artist
INSERT INTO Users (login) VALUES 
('Admin'),
('Guest1'),
('Guest2'),
('Guest3'),
('Guest4');

-- Добавляем данные в таблицу Artist
INSERT INTO Listening (track_id, listener, playedAt) VALUES 
(2, 1, '2024-01-08 04:05:06'),
(2, 2, '2024-01-08 04:05:06'),
(3, 3, '2024-01-08 05:05:06'),
(3, 4, '2023-01-08 06:05:06'),
(4, 4, '2023-01-08 07:05:06');


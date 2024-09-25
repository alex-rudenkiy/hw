create table album
(
    album_id serial
        primary key,
    name     varchar(255) not null,
    artist   integer
        references artist,
    year     integer,
    genre    integer      not null
        references genre
);

alter table album
    owner to student15;

INSERT INTO student15.album (album_id, name, artist, year, genre) VALUES (1, 'Sgt. Pepper''s Lonely Hearts Club Band', 1, 1967, 1);
INSERT INTO student15.album (album_id, name, artist, year, genre) VALUES (2, 'Thriller', 2, 1982, 2);
INSERT INTO student15.album (album_id, name, artist, year, genre) VALUES (3, 'IV', 3, 1971, 1);
INSERT INTO student15.album (album_id, name, artist, year, genre) VALUES (4, 'A Night at the Opera', 4, 1975, 1);
INSERT INTO student15.album (album_id, name, artist, year, genre) VALUES (5, '21', 5, 2011, 2);

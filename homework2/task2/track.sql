create table track
(
    track_id serial
        primary key,
    title    varchar(255) not null,
    artist   integer      not null
        references artist,
    year     integer,
    time     integer,
    plays    integer default 0,
    genre    integer
        references genre
);

alter table track
    owner to student15;

INSERT INTO student15.track (track_id, title, artist, year, time, plays, genre) VALUES (1, 'Hey Jude', 1, 1968, 254, 1000, 1);
INSERT INTO student15.track (track_id, title, artist, year, time, plays, genre) VALUES (2, 'Billie Jean', 2, 1983, 421, 2000, 2);
INSERT INTO student15.track (track_id, title, artist, year, time, plays, genre) VALUES (3, 'Stairway to Heaven', 3, 1971, 812, 3000, 1);
INSERT INTO student15.track (track_id, title, artist, year, time, plays, genre) VALUES (4, 'Bohemian Rhapsody', 4, 1975, 555, 4000, 1);
INSERT INTO student15.track (track_id, title, artist, year, time, plays, genre) VALUES (5, 'Someone Like You', 5, 2011, 445, 5000, 2);
INSERT INTO student15.track (track_id, title, artist, year, time, plays, genre) VALUES (6, 'Yesterday', 1, 1965, 205, 6000, 1);
INSERT INTO student15.track (track_id, title, artist, year, time, plays, genre) VALUES (7, 'Beat It', 2, 1982, 418, 7000, 2);
INSERT INTO student15.track (track_id, title, artist, year, time, plays, genre) VALUES (8, 'Whole Lotta Love', 3, 1969, 533, 8000, 1);
INSERT INTO student15.track (track_id, title, artist, year, time, plays, genre) VALUES (9, 'We Will Rock You', 4, 1977, 282, 9000, 1);
INSERT INTO student15.track (track_id, title, artist, year, time, plays, genre) VALUES (10, 'Rolling in the Deep', 5, 2010, 348, 10000, 2);
INSERT INTO student15.track (track_id, title, artist, year, time, plays, genre) VALUES (15, 'Новая песня', 1, 2023, 240, 0, 1);
INSERT INTO student15.track (track_id, title, artist, year, time, plays, genre) VALUES (17, 'Новая песня', 1, 2023, 240, 0, null);
INSERT INTO student15.track (track_id, title, artist, year, time, plays, genre) VALUES (18, 'Новая песня', 1, 2023, 240, 0, null);

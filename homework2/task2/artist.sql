create table artist
(
    artist_id serial
        primary key,
    name      varchar(255) not null
        unique
);

alter table artist
    owner to student15;

INSERT INTO student15.artist (artist_id, name) VALUES (1, 'The Beatles');
INSERT INTO student15.artist (artist_id, name) VALUES (2, 'Michael Jackson');
INSERT INTO student15.artist (artist_id, name) VALUES (3, 'Led Zeppelin');
INSERT INTO student15.artist (artist_id, name) VALUES (4, 'Queen');
INSERT INTO student15.artist (artist_id, name) VALUES (5, 'Adele');

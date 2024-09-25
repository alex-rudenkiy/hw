create table genre
(
    genre_id serial
        primary key,
    name     varchar(255) not null
        unique
);

alter table genre
    owner to student15;

INSERT INTO student15.genre (genre_id, name) VALUES (1, 'Rock');
INSERT INTO student15.genre (genre_id, name) VALUES (2, 'Pop');
INSERT INTO student15.genre (genre_id, name) VALUES (4, 'Hip-Hop');

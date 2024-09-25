create table listening
(
    track_id integer   not null
        references track,
    listener integer   not null
        references users,
    playedat timestamp not null
);

alter table listening
    owner to student15;

INSERT INTO student15.listening (track_id, listener, playedat) VALUES (2, 1, '2024-01-08 04:05:06.000000');
INSERT INTO student15.listening (track_id, listener, playedat) VALUES (2, 2, '2024-01-08 04:05:06.000000');
INSERT INTO student15.listening (track_id, listener, playedat) VALUES (3, 3, '2024-01-08 05:05:06.000000');
INSERT INTO student15.listening (track_id, listener, playedat) VALUES (3, 4, '2023-01-08 06:05:06.000000');
INSERT INTO student15.listening (track_id, listener, playedat) VALUES (4, 4, '2023-01-08 07:05:06.000000');

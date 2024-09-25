create table users
(
    user_id serial
        primary key,
    login   varchar(255) not null
        unique
);

alter table users
    owner to student15;

INSERT INTO student15.users (user_id, login) VALUES (1, 'Admin');
INSERT INTO student15.users (user_id, login) VALUES (2, 'Guest1');
INSERT INTO student15.users (user_id, login) VALUES (3, 'Guest2');
INSERT INTO student15.users (user_id, login) VALUES (4, 'Guest3');
INSERT INTO student15.users (user_id, login) VALUES (5, 'Guest4');

CREATE TABLE IF NOT exists Author (
author_id SERIAL PRIMARY KEY,
name VARCHAR(255) unique NOT NULL
);

CREATE TABLE IF NOT exists Genre (
genre_id SERIAL PRIMARY KEY,
name VARCHAR(255) unique NOT NULL
);

CREATE TABLE IF NOT exists Book (
book_id SERIAL PRIMARY KEY,
title VARCHAR(255) NOT NULL,
year INTEGER,
genre_id INTEGER REFERENCES Genre(genre_id)
);


CREATE table IF NOT EXISTS Users (
user_id SERIAL PRIMARY KEY,
name VARCHAR(255) NOT NULL,
email VARCHAR(255) UNIQUE
);


CREATE TABLE IF NOT exists Orders (
order_id SERIAL PRIMARY KEY,
order_date TIMESTAMP,
users INTEGER REFERENCES Users(user_id),
amount DECIMAL(10,2)
);

CREATE table IF NOT EXISTS Book_Author (
book_id INTEGER REFERENCES Book(book_id),
author_id INTEGER REFERENCES Author(author_id),
PRIMARY KEY (book_id, author_id)
);

CREATE table IF NOT EXISTS Order_Book (
order_id INTEGER REFERENCES Orders(order_id),
book_id INTEGER REFERENCES Book(book_id),
PRIMARY KEY (order_id, book_id),
quantity INTEGER DEFAULT 1
);

CREATE table IF NOT EXISTS Cart (
cart_id SERIAL PRIMARY KEY,
users INTEGER REFERENCES Users(user_id)
);

CREATE table IF NOT EXISTS Cart_Book (
cart_id INTEGER REFERENCES Cart(cart_id),
book_id INTEGER REFERENCES Book(book_id),
quantity INTEGER DEFAULT 1
);

INSERT into student15.Author(name) VALUES
 ('Homer'),
 ('J.D. Salinger'),
 ('George Orwell'),
 ('Jane Austen'),
 ('Harper Lee'),
 ('F. Scott Fitzgerald'),
 ('J.R.R. Tolkien'),
 ('Leo Tolstoy'),
 ('James Joyce'),
 ('Miguel de Cervantes'),
 ('Gabriel García Márquez'),
 ('Herman Melville'),
 ('Margaret Mitchell'),
 ('Aldous Huxley'),
 ('Markus Zusak'),
 ('Yann Martel'),
 ('Khaled Hosseini'),
 ('Stieg Larsson'),
 ('Suzanne Collins'),
 ('Veronica Roth'),
 ('John Green'),
 ('Andy Weir'),
 ('Kristin Hannah'),
 ('Delia Owens'),
 ('Madeline Miller'),
 ('Margaret Atwood'),
 ('Brit Bennett'),
 ('Taylor Jenkins Reid');

INSERT INTO student15.Genre (name) VALUES
 ('Epic Poetry'),
 ('Fiction'),
 ('Dystopian'),
 ('Romance'),
 ('Historical Fiction'),
 ('Modernist Literature'),
 ('Magic Realism'),
 ('Fantasy'),
 ('Science Fiction'),
 ('Young Adult Fiction'),
 ('Crime Fiction');

INSERT INTO student15.Users (name, email) VALUES
 ('John Doe', 'johndoe@email.com'),
 ('Jane Smith', 'janesmith@email.com'),
 ('Michael Jones', 'michaeljones@email.com'),
 ('Sarah Miller', 'sarahmiller@email.com'),
 ('William Johnson', 'williamjohnson@email.com'),
 ('Elizabeth Walker', 'elizabethwalker@email.com'),
 ('Matthew Brown', 'matthewbrown@email.com'),
 ('Emily Davis', 'emilydavis@email.com'),
 ('Benjamin Wilson', 'benjaminwilson@email.com'),
 ('Abigail Rodriguez', 'abigailrodriguez@email.com');

INSERT INTO student15.Orders (order_date, users, amount) VALUES
 ('2023-01-01', 1, 100.00),
 ('2023-01-02', 2, 50.00),
 ('2023-01-03', 3, 75.00),
 ('2023-01-04', 4, 120.00),
 ('2023-01-05', 5, 80.00),
 ('2023-01-06', 6, 60.00),
 ('2023-01-07', 7, 90.00),
 ('2023-01-08', 8, 110.00),
 ('2023-01-09', 9, 70.00),
 ('2023-01-10', 10, 100.00);

INSERT INTO student15.Book (title, year, genre_id) values 
 ('The Iliad', -800, 1),
 ('The Catcher in the Rye', 1951, 2),
 ('1984', 1949, 3),
 ('Pride and Prejudice', 1813, 4),
 ('To Kill a Mockingbird', 1960, 2),
 ('The Great Gatsby', 1925, 2),
 ('The Lord of the Rings', 1954, 8),
 ('Anna Karenina', 1877, 5);


INSERT INTO student15.Book_Author (book_id, author_id) VALUES
 (1, 1),
 (2, 2),
 (3, 3),
 (4, 4),
 (5, 5),
 (6, 6),
 (7, 7),
 (8, 8);

INSERT INTO student15.Order_Book (order_id, book_id, quantity) VALUES
 (1, 1, 2),
 (1, 3, 1),
 (2, 5, 3),
 (3, 7, 2),
 (9, 2, 2),
 (9, 6, 1),
 (10, 8, 3);

INSERT INTO student15.Cart (users) VALUES
 (1),
 (2),
 (3),
 (4),
 (5);

INSERT INTO student15.Cart_Book (cart_id, book_id, quantity) VALUES
 (1, 1, 1),
 (3, 5, 3);



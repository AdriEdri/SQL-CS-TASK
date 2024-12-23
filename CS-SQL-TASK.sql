 -- create database
 CREATE DATABASE IF NOT EXISTS book_system;
 USE book_system;

-- create books table
CREATE TABLE books_data (
	book_id BIGINT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(100) NOT NULL,
	author VARCHAR(100) NOT NULL,
	borrowed_date DATE NOT NULL
);

-- add data
INSERT INTO books_data (title, author, borrowed_date)
VALUES
('Bagaikan Puteri', 'Ramlee Awang Murshid', '2024-05-05'),
('Space Adventure', 'Igloo Publishing', '2024-06-01'),
('Atomic Habits', 'James Clear', '2024-06-23'),
('Ana & Kate', 'Anies Hisham', '2024-07-28'),
('Kisah Menakjubkan 25 Nabi dan Rasul', 'Nurul Ikhsan', '2024-09-16'),
('Korean for Beginner', 'Sunjeong Shin', '2024-10-11');

-- update book
UPDATE `books_data` SET `book_id`= 1, `title`='Bagaikan Puteri', `author`='Ramlee Awang Murshid', `borrowed_date`='2024-10-31' 
WHERE `book_id`= 1;

-- delete a book
DELETE FROM books_data
WHERE title = 'Atomic Habits';


-- re-add a deleted book
INSERT INTO books_data (title, author, borrowed_date)
VALUES ('Atomic Habits', 'James Clear', '2024-06-23');

-- find by author
SELECT * FROM books_data
WHERE author = 'Ramlee Awang Murshid';

-- find by after certain date
SELECT * FROM books_data
WHERE borrowed_date > '2024-06-01';

-- find by after by specific date
SELECT * FROM books_data
WHERE borrowed_date = '2024-07-28';
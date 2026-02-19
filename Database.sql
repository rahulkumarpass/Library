-- Create Database
CREATE DATABASE IF NOT EXISTS LibraryManagement;
USE LibraryManagement;
-- Users Table
CREATE TABLE IF NOT EXISTS Users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    role ENUM('Student', 'Employee') NOT NULL,
    date_of_birth DATE,
    gender ENUM('Male', 'Female'),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
-- Books Table
CREATE TABLE IF NOT EXISTS Books (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    isbn VARCHAR(13) UNIQUE,
    publication_year YEAR,
    genre VARCHAR(50),
    available BOOLEAN DEFAULT TRUE
);
-- BorrowedBooks Table
CREATE TABLE IF NOT EXISTS BorrowedBooks (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    book_id INT,
    borrowed_date DATE,
    return_date DATE,
    returned BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (user_id) REFERENCES Users(id),
    FOREIGN KEY (book_id) REFERENCES Books(id)
);
-- Sample Data
INSERT INTO Users (
        first_name,
        last_name,
        email,
        password,
        role,
        date_of_birth,
        gender
    )
VALUES (
        'John',
        'Doe',
        'johndoe@example.com',
        'hashed_password_1',
        'Student',
        '2000-05-12',
        'Male'
    );
INSERT INTO Users (
        first_name,
        last_name,
        email,
        password,
        role,
        date_of_birth,
        gender
    )
VALUES (
        'Jane',
        'Smith',
        'janesmith@example.com',
        'hashed_password_2',
        'Employee',
        '1985-10-22',
        'Female'
    );
INSERT INTO Books (
        title,
        author,
        isbn,
        publication_year,
        genre,
        available
    )
VALUES (
        'Introduction to Algorithms',
        'Thomas H. Cormen',
        '9780262033848',
        2009,
        'Computer Science',
        TRUE
    );
INSERT INTO Books (
        title,
        author,
        isbn,
        publication_year,
        genre,
        available
    )
VALUES (
        'Clean Code',
        'Robert C. Martin',
        '9780132350884',
        2008,
        'Software Development',
        TRUE
    );
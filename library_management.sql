CREATE TABLE Student (
    student_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    course VARCHAR(100)
);

CREATE TABLE Author (
    author_id INT PRIMARY KEY,
    author_name VARCHAR(100)
);

CREATE TABLE Book (
    book_id INT PRIMARY KEY,
    title VARCHAR(200),
    author_id INT,
    category VARCHAR(100),
    available_copies INT,
    FOREIGN KEY (author_id) REFERENCES Author(author_id)
);

CREATE TABLE Librarian (
    librarian_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100)
);

CREATE TABLE Borrowing (
    borrowing_id INT PRIMARY KEY,
    student_id INT,
    book_id INT,
    librarian_id INT,
    borrow_date DATE,
    return_date DATE,
    FOREIGN KEY (student_id) REFERENCES Student(student_id),
    FOREIGN KEY (book_id) REFERENCES Book(book_id),
    FOREIGN KEY (librarian_id) REFERENCES Librarian(librarian_id)
);


INSERT INTO Student (student_id, name, email, course) VALUES
(1, 'John Cruz', 'john.cruz@gmail.com', 'Computer Science'),
(2, 'Maria Santos', 'maria.santos@gmail.com', 'Information Technology'),
(3, 'Kevin Reyes', 'kevin.reyes@gmail.com', 'Computer Science'),
(4, 'Angela Garcia', 'angela.garcia@gmail.com', 'Information Technology'),
(5, 'Daniel Flores', 'daniel.flores@gmail.com', 'Computer Engineering');

INSERT INTO Author (author_id, author_name) VALUES
(1, 'Robert Martin'),
(2, 'James Clear'),
(3, 'J.K. Rowling'),
(4, 'George Orwell'),
(5, 'Yuval Noah Harari');

INSERT INTO Book (book_id, title, author_id, category, available_copies) VALUES
(1, 'Clean Code', 1, 'Programming', 3),
(2, 'Atomic Habits', 2, 'Self-Help', 5),
(3, 'Harry Potter', 3, 'Fantasy', 4),
(4, '1984', 4, 'Fiction', 2),
(5, 'Sapiens', 5, 'History', 6);

INSERT INTO Librarian (librarian_id, name, email) VALUES
(1, 'Anna Lopez', 'anna.lopez@library.com'),
(2, 'Mark Reyes', 'mark.reyes@library.com'),
(3, 'Sarah Garcia', 'sarah.garcia@library.com');

INSERT INTO Borrowing (borrowing_id, student_id, book_id, librarian_id, borrow_date, return_date) VALUES
(1, 1, 1, 1, '2026-09-01', '2026-09-08'),
(2, 2, 2, 2, '2026-09-02', '2026-09-09'),
(3, 3, 1, 1, '2026-09-03', '2026-09-10'),
(4, 4, 3, 3, '2026-09-04', '2026-09-11'),
(5, 5, 4, 2, '2026-09-05', '2026-09-12'),
(6, 1, 5, 1, '2026-09-06', '2026-09-13'),
(7, 2, 3, 3, '2026-09-07', '2026-09-14');

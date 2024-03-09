-- Create the database
CREATE DATABASE library;
-- Use the database
USE library;

-- Create the Branch table
CREATE TABLE  Branch (
    Branch_no INT PRIMARY KEY,
    Manager_Id INT,
    Branch_address VARCHAR(50),
    Contact_no VARCHAR(20)
);
INSERT INTO Branch (Branch_no, Manager_Id, Branch_address, Contact_no)
VALUES
    (1, 101, 'ABC STREET UK', '123-456-7890'),
    (2, 102, 'CBC JUNCTION UK', '234-567-8901'),
    (3, 103, 'AJC POST US', '345-678-9012'),
    (4, 104, 'ZXY STREET UK', '456-789-0123'),
    (5, 105, 'TYU STREET US', '567-890-1234'),
    (6, 106, 'HUI POST CANADA', '678-901-2345'),
    (7, 107, 'LIO CORNER PARIS', '789-012-3456'),
    (8, 108, 'SDE JUNCTION AFRICA', '890-123-4567'),
    (9, 109, 'OOI STREET INDIA', '901-234-5678'),
    (10, 110, 'LOME JUNCTION ROME', '012-345-6789');
SELECT * FROM Branch;    

-- Create the Employee table
CREATE TABLE  Employee (
    Emp_Id INT PRIMARY KEY,
    Emp_name VARCHAR(25),
    Position VARCHAR(25),
    Salary DECIMAL(10, 2),
    Branch_no INT,
    FOREIGN KEY (Branch_no) REFERENCES Branch(Branch_no)
);
INSERT INTO Employee (Emp_Id, Emp_name, Position, Salary, Branch_no )
VALUES
(11, 'Rinu', 'Front Office Assistant', 20000.00, 1),
(12, 'Amal', 'System Librarian', 30000.00, 1),
(13, 'Nishad', 'System Librarian', 25000.00, 3),
(14, 'Rahul', 'Assistant Librarian', 18000.00, 3),
(15, 'Krishna Kumar', 'Information Manager', 20000.00, 2),
(16, 'Muhammed', 'Librarian', 55000.00, 2),
(17, 'Swetha', 'Front Office Assistant', 21000.00, 7),
(18, 'Ram', 'Trainee Ass.Librarian', 20000.00, 8),
(19, 'Vimal', 'System Librarian', 23000.00, 7),
(20, 'Employee 20', 'Position 20', 60000.00, 1);
SELECT * FROM Employee;

-- Create the Books table
CREATE TABLE Books (
    ISBN VARCHAR(20) PRIMARY KEY,
    Book_title VARCHAR(25),
    Category VARCHAR(25),
    Rental_Price DECIMAL(10, 2),
    Status ENUM('yes', 'no'),
    Author VARCHAR(25),
    Publisher VARCHAR(25)
);
INSERT INTO Books (ISBN, Book_title, Category, Rental_Price, Status, Author, Publisher) VALUES
('9780141182551', '1984', 'Fiction', 12.99, 'yes', 'George Orwell', 'Penguin Books'),
('9780061122415', 'To Kill a Mockingbird', 'Fiction', 10.99, 'no', 'Harper Lee', 'HPMC'),
('9780743273565', 'The Great Gatsby', 'Fiction', 8.99, 'yes', 'F. Scott Fitzgerald', 'Scribner'),
('9780141439563', 'Pride and Prejudice', 'Fiction', 7.99, 'no', 'Jane Austen', 'Penguin Classics'),
('9780140449146', 'Frankenstein', 'Fiction', 9.99, 'yes', 'Mary Shelley', 'Penguin Classics'),
('9780064407663', 'Charlottes Web', 'Children', 6.99, 'yes', 'E.B. White', 'HarperCollins'),
('9780439023528', 'The Hunger Games', 'Young Adult', 11.99, 'no', 'Suzanne Collins', 'Scholastic Press'),
('9780439554930', 'Harry Potter', 'Children', 9.99, 'yes', 'J.K. Rowling', 'Scholastic Ltd'),
('9780544003415', 'The Hobbit', 'Fantasy', 10.99, 'yes', 'J.R.R. Tolkien', 'Mariner Books'),
('9780316015844', 'Twilight', 'Young Adult', 8.99, 'yes', 'Stephenie Meyer', 'Little, Brown and Company');
SELECT * FROM Books;

-- Create the Customer table
CREATE TABLE Customer (
    Customer_Id INT PRIMARY KEY,
    Customer_name VARCHAR(255),
    Customer_address VARCHAR(255),
    Reg_date DATE
);
-- Insert records into the Customer table
INSERT INTO Customer (Customer_Id, Customer_name, Customer_address, Reg_date) VALUES
(111, 'Abhai', 'ABC STREET UK', '2023-01-01'),
(112, 'Alex', 'ZXY STREET UK', '2023-05-01'),
(113, 'Nitara', 'ALIO CORNER PARIS', '2023-03-01'),
(114, 'Zoya', 'ZXY STREET UK', '2023-04-01'),
(115, 'Ali', 'ABC STREET UK', '2023-05-01'),
(116, 'Merlin', 'TYU STREET US', '2023-04-01'),
(117, 'Shine', 'SDE JUNCTION AFRICA', '2023-07-01'),
(118, 'Thomas', 'SDE JUNCTION AFRICA', '2023-02-01'),
(119, 'Amoy', 'TYU STREET US', '2023-02-01'),
(210, 'Lijoy', 'HUI POST CANADA', '2023-1-01');
SELECT * FROM Customer;


-- Create the IssueStatus table
CREATE TABLE IssueStatus (
    Issue_Id INT PRIMARY KEY,
    Issued_cust INT,
    Issued_book_name VARCHAR(25),
    Issue_date DATE,
    Isbn_book VARCHAR(20),
    FOREIGN KEY (Issued_cust) REFERENCES Customer(Customer_Id),
    FOREIGN KEY (Isbn_book) REFERENCES Books(ISBN)
);
INSERT INTO IssueStatus (Issue_Id, Issued_cust, Issued_book_name, Issue_date, Isbn_book)
VALUES
(21, 111, '1984', '2023-02-21', '9780141182551'),
(22, 112, 'To Kill a Mockingbird', '2023-02-22', '9780061122415'),
(23, 113, 'The Great Gatsby', '2023-02-23', '9780743273565'),
(24, 111, 'Pride and Prejudice', '2023-02-24', '9780141439563'),
(25, 114, 'Frankenstein', '2023-02-25', '9780140449146'),
(26, 116, 'Charlottes Web', '2023-02-26', '9780064407663'),
(27, 117, 'The Hunger Games', '2023-02-27', '9780439023528'),
(28, 115, 'Harry Potter', '2023-02-28', '9780439554930'),
(29, 119, 'The Hobbit', '2023-02-28', '9780544003415'),
(30, 210, 'Twilight', '2023-02-3', '9780316015844');
SELECT * FROM IssueStatus;

-- Create the ReturnStatus table
CREATE TABLE ReturnStatus (
    Return_Id INT PRIMARY KEY,
    Return_cust INT,
    Return_book_name VARCHAR(25),
    Return_date DATE,
    Isbn_book2 VARCHAR(20),
    FOREIGN KEY (Return_cust) REFERENCES Customer(Customer_Id),
    FOREIGN KEY (Isbn_book2) REFERENCES Books(ISBN)
);
INSERT INTO ReturnStatus (Return_Id, Return_cust, Return_book_name, Return_date, Isbn_book2)
VALUES
(1, 111, '1984', '2024-03-01', '9780141182551'),
(2, 112, 'To Kill a Mockingbird', '2024-03-02', '9780061122415'),
(3, 113, 'The Great Gatsby', '2024-03-03', '9780743273565'),
(4, 114, 'Pride and Prejudice', '2024-03-04', '9780141439563'),
(5, 115, 'Frankenstein', '2024-03-05', '9780140449146'),
(6, 116, 'Charlottes Web', '2024-03-06', '9780064407663'),
(7, 117, 'The Hunger Games', '2024-03-07', '9780439023528'),
(8, 118, 'Harry Potter', '2024-03-08', '9780439554930'),
(9, 119, 'The Hobbit', '2024-03-09', '9780544003415'),
(10, 210, 'Twilight', '2024-03-10', '9780316015844');
SELECT * FROM ReturnStatus;

#Questions and Answers
#1.Retrieve the book title, category, and rental price of all available books.

SELECT Book_title, Category, Rental_Price
FROM Books
WHERE Status = 'yes';

#2. List the employee names and their respective salaries in descending order of salary.

SELECT Emp_name, Salary
FROM Employee
ORDER BY Salary DESC;

#3. Retrieve the book titles and the corresponding customers who have issued those books.

SELECT b.Book_title, c.Customer_name
FROM IssueStatus i
JOIN Books b ON i.Isbn_book = b.ISBN
JOIN Customer c ON i.Issued_cust = c.Customer_Id;

#4. Display the total count of books in each category.

SELECT Category, COUNT(*) AS Total_Count
FROM Books
GROUP BY Category;

#5. Retrieve the employee names and their positions for the employees whose salaries are above Rs.50,000.

SELECT Emp_name, Position
FROM Employee
WHERE Salary > 50000;

#6. List the customer names who registered before 2022-01-01 and have not issued any books yet.

SELECT Customer_name
FROM Customer
WHERE Reg_date < '2022-01-01'
AND Customer_Id NOT IN (SELECT Issued_cust FROM IssueStatus);

#7. Display the branch numbers and the total count of employees in each branch.

SELECT Branch_no, COUNT(*) AS Total_Count
FROM Employee
GROUP BY Branch_no;

#8. Display the names of customers who have issued books in the month of February 2023.

SELECT DISTINCT c.Customer_name
FROM IssueStatus i
JOIN Customer c ON i.Issued_cust = c.Customer_Id
WHERE YEAR(i.Issue_date) = 2023
AND MONTH(i.Issue_date) = 2;

#9. Retrieve book_title from book table containing history.

SELECT Book_title
FROM Books
WHERE Category = 'History';

# 10.Retrieve the branch numbers along with the count of employees for branches having more than 2 employees

SELECT Branch_no, COUNT(*) AS Total_Count
FROM Employee
GROUP BY Branch_no
HAVING COUNT(*) > 2;


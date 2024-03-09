# Library Management Sysytem_MySQL
 
The program initializes a relational database schema for a library management system using SQL. 

It defines tables for branches, employees, books, customers, issue status, and return status, each with their respective columns and constraints. Data is inserted into these tables to populate them with sample information & all tables are assigned to their respective attributes.

Additionally, the program includes several SQL queries designed to retrieve specific insights from the database:

1. **Available Books**: Retrieves the title, category, and rental price of all books that are currently available (i.e., have a "yes" status).

2. **Employee Salaries**: Lists the names of employees along with their salaries, sorted in descending order of salary.

3. **Issued Books and Customers**: Retrieves the titles of books issued along with the names of customers who have issued them.

4. **Total Book Counts by Category**: Displays the total count of books in each category.

5. **High-Salary Employees**: Retrieves the names and positions of employees whose salaries are above Rs.50,000.

6. **Inactive Customers**: Lists the names of customers who registered before January 1, 2022, and have not issued any books.

7. **Employee Counts by Branch**: Displays the branch numbers along with the total count of employees in each branch.

8. **February 2023 Issuers**: Retrieves the names of customers who have issued books in February 2023.

9. **History Books**: Retrieves the titles of books categorized under "History."

10. **Branches with More Than 2 Employees**: Retrieves the branch numbers along with the count of employees for branches having more than 2 employees.

This program serves as a comprehensive example of setting up and querying a database for a library management system, showcasing different aspects of SQL schema definition and data retrieval operations.

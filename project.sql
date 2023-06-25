create database Library;
use Library;

/*1)*/ create table Branch ( Branch_No int primary key, 
Manager_Id int, Branch_address varchar(150), Contact_no bigint);

insert into branch values (1, 101, 'Trivandrum', 9878987801),
						   (2, 102, 'Kollam', 9878987802),
                           (3, 103, 'Pathanamthitta', 9878987803),
                           (4, 104, 'Alappuzha', 9878987804),
                           (5, 105, 'Kottayam', 9878987805),
                           (6, 106, 'Idukki', 9878987806),
                           (7, 107, 'Ernakulam', 9878987807);


/*2)*/ create table Employee (Emp_Id int primary key, 
Emp_name varchar(50), Position varchar(30), Branch_no int,
 Salary int);
 
 insert into employee values 
 (101, 'King', 'Manager', 1, 80000),
 (102, 'George', 'Manager', 2, 750000),
 (103, 'Peter', 'Manager', 3, 60000),
 (104, 'Hayley', 'Manager', 4, 65000),
 (105, 'Jordana', 'Manager', 5, 55000),
 (106, 'Prince', 'Manager', 6, 70000),
 (107, 'Abhishek', 'Manager', 7, 90000),
 (111, 'Dehsauna', 'Library Assistant', 1, 30000),
 (112, 'Arun', 'Librarian', 1, 40000),
 (113, 'Pedolsky', 'Library Clerk', 1, 25000),
 (114, 'Dileep', 'Research Assistant', 1, 55000),
 (115, 'Manu', 'Cashier', 1, 40000),
 (116, 'Achu', 'Library Assistant', 7, 30000),
 (117, 'Rakesh', 'Content Manager', 7, 60000),
 (118, 'Sandeep', 'Archivist', 7, 50000),
 (119, 'Resmi', 'Document Analyst', 7, 42000),
 (120, 'Arsho', 'Library Assistant', 7, 30000),
 (121, 'Nikhil', 'Library Assistant', 2, 30000),
 (122, 'Sunny', 'Library Assistant', 3, 30000),
 (123, 'Akira', 'Librarian', 5, 40000),
 (124, 'Leonardo', 'Library Assistant', 5, 30000),
 (125, 'Joseph', 'Library Assistant', 6, 30000),
 (126, 'Ratnam', 'Library Assistant', 4, 30000);



/*3)*/ create table Customer (Customer_Id int primary key, Customer_name varchar(50), 
						Customer_address varchar(100), Reg_date date);

insert into Customer values (201, 'Sooraj', 'Trivandrum', '2012-12-31'),
							(202, 'Anu', 'Kollam', '2021-09-30'),
							(203, 'Manu', 'Kollam', '2022-12-08'),
                            (204, 'Mohan', 'Alappuzha', '2023-01-12'),
                            (205, 'Mammootty', 'Ernakulam', '2020-08-25'),
                            (206, 'Suresh', 'Kaviyoor', '2019-06-30'),
                            (207, 'Hrithik', 'Attingal', '2023-03-17');
insert into Customer values (208, 'Anita', 'Trivandrum', '2021-12-31');
                            


/*4)*/ create table IssueStatus (Issue_id int primary key, 
							Issued_cust int, foreign key(Issued_cust) 
                            references Customer(Customer_Id), 
                            Issued_book_name varchar(30), 
                            Issue_date date, Isbn_book bigint, 
                            foreign key(Isbn_book) references Books(ISBN));

 insert into IssueStatus values 
		(301, 201, 'On the Origin of Species', '2023-06-12', 97809767716),
		(302, 202, 'A brief history of time', '2023-06-10', 97809767726),
        (303, 203, 'The Selfish Gene', '2023-02-22', 97809767736),
        (304, 204, 'Cosmos', '2023-05-13', 97809767746),
        (305, 205, 'Sapiens- A bief history of Humankind', '2023-01-17', 97809767756),
        (306, 206, 'Bloodlands', '2023-03-12', 97809767766),
        (307, 207, 'Life and Fate', '2023-01-22', 97809767776),
        (308, 201, 'A Woman in Berlin', '2023-04-14', 97809767786),
        (309, 205, 'A man called Ove', '2023-05-17', 97809767796),
        (310, 206, 'Dark Matter', '2023-06-11', 97809767717);   
        
              
/*5)*/ create table ReturnStatus (Return_Id int Primary key, 
Return_Cust int, Return_book_name varchar(150),
Return_date date, Isbn_book2 bigint, foreign key(Isbn_book2) 
references Books(ISBN));

insert into ReturnStatus values 
		(401, 201, 'The Theory Of Everything', '2022-05-12', 97809767816),
		(402, 202, 'The Psychology of Money', '2021-06-10', 97809767826),
        (403, 203, 'Dont Believe Everything You Think', '2020-02-22', 97809767836),
        (404, 204, 'Ancient and Medieval India', '2019-05-13', 97809767846),
        (405, 205, 'A Short History of The World', '2018-01-17', 97809767856),
        (406, 206, 'The Silent Patient', '2021-03-12', 97809767866),
        (407, 207, 'The Time Machine', '2022-01-22', 97809767876),
        (408, 201, 'The Palace of Illusions', '2023-04-14', 97809767886),
        (409, 205, 'The Alchemist', '2020-05-17', 97809767896),
        (410, 206, 'One Day, Life Will Change', '2019-06-11', 97809767917);                        
                            


/*6)*/ create table Books (ISBN bigint primary key, Book_title varchar(150), 
Category varchar(50), Rental_price int, Status varchar(30), Author varchar(50),
Publisher varchar(50));

insert into books values 
(97809767716, 'On the Origin of Species',  'Science', 50, 'Yes', 'Charles Darwin', 'Simon & Schuster'),
(97809767726, 'A brief history of time', 'Science', 40, 'Yes', 'Stephen Hawking', 'Bantam'),
( 97809767736, 'The Selfish Gene', 'Science', 30, 'Yes', 'Richard Dawkins', 'Oxford University Press'),
(97809767746, 'Cosmos', 'Science', 25, 'Yes', 'Carl Sagan', 'Random House'),
(97809767756, 'Sapiens- A bief history of Humankind', 'History', 30, 'Yes', 'Yuval Noah Harari', 'Dvir Publishing House'),
(97809767766, 'Bloodlands', 'History', 20, 'Yes', 'Timothy D. Snyder', 'Basic Books'),
(97809767776, 'Life and Fate', 'History', 50, 'Yes', 'Vasily Grossman', 'NYRB Classics'),
(97809767786, 'A Woman in Berlin', 'History', 45, 'Yes', 'Marta Hillers', 'Picador'),
(97809767796, 'A man called Ove', 'Fiction', 40, 'Yes', 'Fredrik Backman', 'Simon & Schuster'),
(97809767717, 'Dark Matter', 'Fiction', 60, 'Yes', 'Blake Crouch', 'Crown Publishing Group'),
(97809767816, 'The Theory Of Everything', 'Science', 40, 'No', 'Stephen Hawking', '‎Jaico Publishing House'),
(97809767826, 'The Psychology of Money', 'Non Fiction', 50, 'No', 'MORGAN HOUSEL', '‎Harriman House'),
(97809767836, 'Dont Believe Everything You Think', 'Non fiction', 35, 'No', 'Joseph Nguyen', 'Crown Publishing'),
(97809767846, 'Ancient and Medieval India', 'History', 15, 'No', 'Poonam Dalal', 'McGraw Hill'),
(97809767856, 'A Short History of The World', 'History', 25, 'No', 'H.G. Wells', 'Cassell & Company'),
(97809767866, 'The Silent Patient', 'Fiction', 30, 'No', 'Alex Michaelides', 'Celadon Books '),
(97809767876, 'The Time Machine', 'Fiction', 30, 'No', 'H.G. Wells', 'William Heinemann'),
(97809767886, 'The Palace of Illusions', 'Science', 50, 'No', 'Chitra Banerjee', '‎Anchor'),
(97809767896, 'The Alchemist', 'Novel', 60, 'No', 'Paulo Coelho', '	HarperTorch'),
(97809767917, 'One Day, Life Will Change', 'Non Fiction', 50, 'No', 'Saranya Umakanthan', 'Fingerprint! Publishing');

-- 1. Retrieve the book title, category, and rental price of all available
-- books.
select Book_title, Category, Rental_price from books;

-- 2. List the employee names and their respective salaries in descending
-- order of salary.

select Emp_name, salary from Employee order by salary desc;

-- 3. Retrieve the book titles and the corresponding customers who have
-- issued those books.

select customer.Customer_name, IssueStatus.Issued_book_name  from customer join IssueStatus on 
Customer_Id = Issued_cust;

-- 4. Display the total count of books in each category.

select category, count(*) from books group by category;

-- 5. Retrieve the employee names and their positions for the employees
-- whose salaries are above Rs.50,000.

select Emp_name, position, salary from employee where salary > 50000;

-- 6. List the customer names who registered before 2022-01-01 and have
-- not issued any books yet.

select customer.Customer_name, IssueStatus.issued_cust from customer  left join IssueStatus
on Customer_Id = Issued_cust where reg_date < '2022-01-01' & IssueStatus.issued_cust is null;

-- 7. Display the branch numbers and the total count of employees in each
-- branch.

select branch_no, count(emp_name) from employee group by branch_no;

-- 8. Display the names of customers who have issued books in the month
-- of June 2023

SELECT Customer.Customer_name, IssueStatus.issue_date FROM Issuestatus 
	JOIN Customer 
    on Issued_cust = customer_id where
DATE_FORMAT(issue_date,'%Y-%m') = '2023-06';

-- SELECT
-- EXTRACT(YEAR FROM date) AS year,
-- EXTRACT(MONTH FROM date) AS month
-- FROM dates;

-- 9. Retrieve book_title from book table containing history.

select Book_title, category from books where category='History';

-- 10.Retrieve the branch numbers along with the count of employees for
-- branches having more than 5 employees.

select Branch_no, count(emp_name) as 'Employee Count' from employee 
group by branch_no having count(emp_name) > 5;















DROP TABLE IF EXISTS branch;
CREATE TABLE branch
(
  branch_id VARCHAR(10) PRIMARY KEY,
  manager_id VARCHAR(10 ),
  branch_address VARCHAR(55),
  contact_no VARCHAR(50)
);

ALTER TABLE branch
ALTER COLUMN contact_no type VARCHAR(50);



   CREATE TABLE employee
   ( 
     emp_id VARCHAR(10) PRIMARY KEY,
     emp_name VARCHAR(50),
     position VARCHAR(50),
     salary INT,
     branch_id VARCHAR(50)
);

ALTER TABLE issued_status DROP CONSTRAINT fk_employee;



CREATE TABLE books
(
isbn VARCHAR(20) PRIMARY KEY,
book_title VARCHAR(75),
category VARCHAR(50),
rental_price FLOAT(20),
status VARCHAR(20),
author VARCHAR(50),
publisher VARCHAR(50)

);

CREATE TABLE members
(
member_id VARCHAR(50) PRIMARY KEY,
member_name VARCHAR(50),
member_address VARCHAR(50),
reg_date DATE

);

CREATE TABLE issued_status
(
issued_id VARCHAR(20) PRIMARY KEY,
issued_member_id VARCHAR(10),
issued_book_name VARCHAR(75),
issued_date DATE,
issued_book_isbn VARCHAR(30),
issued_emp_id VARCHAR(50)

);


CREATE TABLE return_status
(
return_id VARCHAR(50) PRIMARY KEY,
issued_id VARCHAR(50),
return_book_name VARCHAR(75),
return_date DATE,
return_book_isbn VARCHAR(50)

);

ALTER TABLE issued_status
ADD CONSTRAINT fk_members
FOREIGN KEY (issued_members_id)
REFERENCES members(members_id);

ALTER TABLE issued_status
ADD CONSTRAINT fk_books
FOREIGN KEY (issued_book_isbn)
REFERENCES books(isbn);

ALTER TABLE issued_status
ADD CONSTRAINT fk_employee
FOREIGN KEY (issued_emp_id)
REFERENCES employee(emp_id);

ALTER TABLE employee
ADD CONSTRAINT fk_branch
FOREIGN KEY (branch_id)
REFERENCES branch(branch_id);

ALTER TABLE return_status
ADD CONSTRAINT fk_issued_status
FOREIGN KEY (issued_id)
REFERENCES issued_status(issued_id);


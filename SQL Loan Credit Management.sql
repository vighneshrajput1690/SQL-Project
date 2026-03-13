-- 1. Create Command
-- CREATE DATABASE Loan Credit Risk Management
CREATE DATABASE Loan_Credit_Risk_Management;
USE Loan_Credit_Risk_Management;
-- CREATE TABLE QUERY 

-- 1.Create Table Customers
CREATE TABLE Customers(
Customer_Id INT PRIMARY KEY,
Name VARCHAR (100),
Phone BIGINT,
Email VARCHAR(100)
); 

-- 2.Create Table Credit_Scores
CREATE TABLE Credit_Scores(
Score_Id INT AUTO_INCREMENT PRIMARY KEY,
Customer_Id INT,
Credit_Score INT,
Score_Date DATE,
CONSTRAINT fk_cust FOREIGN KEY (Customer_Id) REFERENCES Customers(Customer_Id)
);


-- 3. Create Table Loans
CREATE TABLE Loans(
Loan_Id INT PRIMARY KEY,
Customer_Id INT,
Loan_Amount DECIMAL(12,2),
Interest_Rate DECIMAL (5,2),
Loan_Date DATE ,
Loan_Status VARCHAR (20),
CONSTRAINT fk_cus FOREIGN KEY (Customer_Id) REFERENCES Customers(Customer_Id)
);

-- 4.Create Table Repayments
CREATE TABLE Repayments(
Repayment_Id INT PRIMARY KEY,
Loan_Id INT,
Amount_Paid DECIMAL(12,2),
Payment_Date DATE,
CONSTRAINT fk_loan FOREIGN KEY (Loan_Id) REFERENCES Loans (Loan_Id)
);

-- 5. Create Table loan_officers
CREATE TABLE Loan_Officers(
Officer_Id INT AUTO_INCREMENT PRIMARY KEY,
Name VARCHAR (100),
Branch VARCHAR(50)
);

-- 6. Create Table Loan_Assignments
CREATE TABLE Loan_Assignments(
Assignment_Id INT AUTO_INCREMENT PRIMARY KEY,
Loan_Id INT,
Officer_Id INT,
CONSTRAINT fk_loanid FOREIGN KEY (Loan_Id) REFERENCES Loans (Loan_Id),
CONSTRAINT fk_offid FOREIGN KEY (Officer_Id) REFERENCES Loan_Officers(Officer_Id)
);

-- B.INSERT COMMAND
-- 1.Insert Into Customers Table
INSERT INTO Customers (Customer_Id,Name,Phone,Email) VALUES
(1,'Rajesh Yadav',986753215,'rajeshyadav1@gmail.com'),
(2,'Bhaskar Giram',9756485465,'bhaskargiram2@gmail.com'),
(3,'Tej Pratap',9875321466,'tejpratap3@gmail.com'),
(4,'Vijay Joseph',8874563215,'vijayjoseph4@gmail.com'),
(5,'Bigil Shaikh',8674512589,'bigilshaikh5@gmail.com'),
(6,'Soumya Das',9745125466,'soumyadas6@gmail.com'),
(7,'Kunal Kheemu',7894512547,'kunalkheemu7@gmail.com'),
(8,'Leo Das',8645745136,'leodas8@gmail.com'),
(9,'Ram Charan',9874147822,'ramcharan9@gmail.com'),
(10,'Priya Patel',8521234567,'priyapatel10@gmail.com'),
(11,'Jignesh Sharma',9966585641,'jigneshsharma11@gmail.com'),
(12,'Sujata Dev',9864874561,'sujatadev12@gmail.com'),
(13,'Dev Patil',9871236545,'devpatil12@gmail.com'),
(14,'Tasha Iyer',9646574155,'tashaiyer13@gmail.com'),
(15,'Shriya Saran',9451212456,'shriyasaran15@gmail.com');


-- 2. Insert Into Credit_Scores Table
INSERT INTO Credit_Scores(Customer_Id,Credit_Score,Score_Date) VALUES
(1,799,'2025-01-10'),
(2,840,'2025-02-15'),
(3,650,'2025-03-25'),
(4,700,'2025-03-31'),
(5,800,'2025-04-13'),
(6,850,'2025-05-30'),
(7,550,'2025-06-27'),
(8,600,'2025-07-18'),
(9,649,'2025-07-21'),
(10,500,'2025-08-05'),
(11,670,'2025-08-13'),
(12,720,'2025-08-28'),
(13,750,'2025-09-12'),
(14,810,'2025-10-11'),
(15,680,'2025-11-25');

-- 3. Insert Into Loans Table
INSERT INTO Loans(Loan_Id,Customer_Id,Loan_Amount,Interest_Rate,Loan_Date,Loan_Status) VALUES
(001,1,150000.00,7.9,'2025-01-31','Approved'),
(002,2,250000.00,8.4,'2025-02-28','Approved'),
(003,3,100000.00,7.0,'2025-04-15','Pending'),
(004,4,120000.00,7.2,'2025-04-20','Approved'),
(005,5,220000.00,8.0,'2025-04-30','Approved'),
(006,6,300000.00,8.8,'2025-06-10','Approved'),
(007,7,95000.00,6.8,'2025-07-15','Rejected'),
(008,8,140000.00,7.5,'2025-07-25','Rejected'),
(009,9,135000.00,7.1,'2025-08-23','Rejected'),
(0010,10,75000.00,6.5,'2025-08-26','Rejected'),
(0011,11,140000.00,7.4,'2025-08-31','Approved'),
(0012,12,175000.00,7.7,'2025-09-07','Approved'),
(0013,13,190000.00,7.9,'2025-09-20','Approved'),
(0014,14,230000.00,8.2,'2025-10-25','Approved'),
(0015,15,110000.00,6.2,'2025-11-30','Approved');

-- 4. Insert Into Repayments Table
INSERT INTO Repayments(Repayment_Id,Loan_Id,Amount_Paid,Payment_Date) VALUES
(1,001,150000.00,'2025-02-14'),
(2,002,250000.00,'2025-03-10'),
(3,004,120000.00,'2025-05-10'),
(4,005,220000.00,'2025-05-13'),
(5,006,300000.00,'2025-07-18'),
(6,0011,140000.00,'2025-09-12'),
(7,0012,175000.00,'2025-09-15'),
(8,0013,190000.00,'2025-09-26'),
(9,0014,230000.00,'2025-10-30'),
(10,0015,110000.00,'2025-12-01');
DROP TABLE Repayments;


-- 5. Insert Into Loan_Officers Table
INSERT INTO Loan_Officers(Name,Branch) VALUES
('Ajay Nagar','Vasai'),
('Diljit Soni','Virar'),
('Vishal Mane','Dahisar'),
('Siddhi Pawar','Govandi'),
('Arya Bhoir','Mira Road'),
('Sanskruti Shirsat','Airoli'),
('Sejal Patil','Sonarpada'),
('Saie Jadhav','Uran'),
('Pranav Shinde','Ghansoli'),
('Deven Dixit','Navi Mumbai');

-- 6. Insert Into Loan_Assignments Table
INSERT INTO Loan_Assignments(Loan_Id,Officer_Id) VALUES
(001,1),
(002,2),
(004,3),
(005,5),
(006,7),
(0011,8),
(0012,4),
(0013,6),
(0014,9),
(0015,10);

-- DDL QUERIES 
-- 1. Add a new column “City” to the Customers table
ALTER TABLE Customers
ADD City VARCHAR(50);

-- 2. Increase Email column size to 150 characters
ALTER TABLE Customers
MODIFY Email VARCHAR(150);

-- 3. Add a CHECK constraint: Credit_Score must be BETWEEN 300 and 900
ALTER TABLE Credit_Scores
ADD CONSTRAINT chk_score CHECK (Credit_Score BETWEEN 300 AND 900);

-- 4. Add a UNIQUE constraint to Phone
ALTER TABLE Customers
ADD CONSTRAINT unique_phone UNIQUE(Phone);

-- 5. Add a NOT NULL constraint to the Loan_Status column
ALTER TABLE Loans
MODIFY Loan_Status VARCHAR(20) NOT NULL;

SET SQL_SAFE_UPDATES = 0;

-- DML QUERIES 
-- 6.Increase all loan amounts by 2% (using UPDATE with arithmetic)
UPDATE Loans
SET Loan_Amount = Loan_Amount * 1.02;

-- 7.Update interest rate for loans above ₹200000
UPDATE Loans
SET Interest_Rate = Interest_Rate + 0.5
WHERE Loan_Amount > 200000;

-- 8. Delete rejected loans
DELETE FROM Loans
WHERE Loan_Status = 'Rejected';

-- 9. ncrease repayment amount by 5%
UPDATE Repayments
SET Amount_Paid = Amount_Paid * 1.05;

-- 10. Delete customer with ID = 16
DELETE FROM Customers
WHERE Customer_Id = 16;

-- DQL QUERIES

-- 11. Select all customers ordered by Name
SELECT * FROM Customers
ORDER BY Name ASC;

-- 12. Find customers with Credit Score BETWEEN 700 AND 850
SELECT c.Name, cs.Credit_Score
FROM Customers c
JOIN Credit_Scores cs 
ON c.Customer_Id = cs.Customer_Id
WHERE cs.Credit_Score BETWEEN 700 AND 850;

-- 13. Select the top 5 highest loan amounts
SELECT Loan_Id, Loan_Amount
FROM Loans
ORDER BY Loan_Amount DESC
LIMIT 5;

-- 14. Show loan records starting from the 3rd row (OFFSET)
SELECT Loan_Id, Loan_Amount, Loan_Status
FROM Loans
LIMIT 5 OFFSET 2;

-- 15. Count how many loans fall under each Loan_Status
SELECT Loan_Status, COUNT(*) AS Total
FROM Loans
GROUP BY Loan_Status;

-- 16. Show only those loan statuses that have more than 1 loan 
SELECT Loan_Status, COUNT(*) AS Total
FROM Loans
GROUP BY Loan_Status
HAVING COUNT(*) > 1;

-- 17. Find customers and their loan amounts 
SELECT c.Name, l.Loan_Amount
FROM Customers c
JOIN Loans l 
ON c.Customer_Id = l.Customer_Id;

-- 18. Show customer name, loan amount, and payment date
SELECT c.Name, l.Loan_Amount, r.Payment_Date
FROM Customers c
JOIN Loans l 
ON c.Customer_Id = l.Customer_Id
JOIN Repayments r 
ON l.Loan_Id = r.Loan_Id;

-- 19. Loans above ₹150000
SELECT Loan_Id, Loan_Amount
FROM Loans
WHERE Loan_Amount > 150000;

-- 20. Rank loans by amount
SELECT Loan_Id, Loan_Amount,
RANK() OVER (ORDER BY Loan_Amount DESC) AS Rank_By_Amount
FROM Loans;

-- THANKYOU --






















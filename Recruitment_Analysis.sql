create database ats_system;
use ats_system;
create table companies_1(company_id int primary key,company_name varchar(100) NOT NULL,location varchar(100),Industry varchar(100));
DESC COMPANIES;
DROP table companies;
-- company table 
create table companies_2(compnay_id int primary key,company_name varchar(100),location varchar(100),industry varchar(100),created_at timestamp default current_timestamp);
-- Jobs Table 
CREATE TABLE Jobs(job_id int primary key auto_increment,company_id int references companies,job_title varchar(100),job_type varchar(100),salary_package decimal(10,2),openings int,job_status varchar(30),created_at timestamp default current_timestamp);
-- Candidates Table
CREATE TABLE candidates(candidate_id int primary key auto_increment,full_name varchar(100) NOT NULL,email varchar(100) unique,Phone varchar(15),city varchar(100),experience_years DECIMAL(4,1),created_at timestamp default current_timestamp);
-- Applications Table
CREATE TABLE applications(application_id int primary key auto_increment,candidate_id int NOT NULL references candidates,job_id int NOT NULL references jobs,application_date DATE,current_status VARCHAR(50));
-- Interview Table 
CREATE TABLE interviews(interview_id int primary key auto_increment,application_id int NOT NULL references applications,round_name varchar(50),interview_date DATE,result VARCHAR(30),feedback VARCHAR(500));
-- Recuriters Table 
CREATE TABLE recruiters(recruiters_id int primary key auto_increment,recruiter_name varchar(100),email varchar(100),company_id int references companies);
-- Status_history Table 
CREATE TABLE status_history(history_id int primary key auto_increment,application_id int not null references applications,old_status varchar(50),new_status varchar(50),changed_at timestamp default current_timestamp);


DESC companies_1;
INSERT INTO companies_1
(company_name, location, industry)
VALUES
('Infosys','Pune','IT Services'),
('TCS','Mumbai','IT Services'),
('Wipro','Hyderabad','IT Services'),
('Accenture','Bengaluru','Consulting'),
('Cognizant','Pune','IT Services'),
('Capgemini','Mumbai','IT Services'),
('Tech Mahindra','Pune','IT Services'),
('HCL Technologies','Noida','IT Services'),
('LTIMindtree','Mumbai','IT Services'),
('Persistent Systems','Pune','Software Development'),
('Oracle India','Bengaluru','Database Software'),
('IBM India','Bengaluru','Technology'),
('Deloitte','Hyderabad','Consulting'),
('KPMG','Mumbai','Consulting'),
('Infosys BPM','Pune','Business Process Management'),
('Clover Infotech','Mumbai','IT Services'),
('Mphasis','Pune','IT Services'),
('Hexaware Technologies','Navi Mumbai','IT Services'),
('Birlasoft','Pune','Software Services'),
('Zensar Technologies','Pune','IT Services');

select *from companies_1;

INSERT INTO applications
(candidate_id, job_id, application_date, current_status)
VALUES
(1,1,'2026-06-01','Applied'),
(2,2,'2026-06-02','Interview Scheduled'),
(3,3,'2026-06-03','Selected'),
(4,4,'2026-06-04','Rejected'),
(5,5,'2026-06-05','Applied'),
(6,6,'2026-06-06','Interview Scheduled'),
(7,7,'2026-06-07','Applied'),
(8,8,'2026-06-08','Selected'),
(9,9,'2026-06-09','Rejected'),
(10,10,'2026-06-10','Applied'),
(11,11,'2026-06-11','Interview Scheduled'),
(12,12,'2026-06-12','Applied'),
(13,13,'2026-06-13','Selected'),
(14,14,'2026-06-14','Rejected'),
(15,15,'2026-06-15','Applied'),
(16,16,'2026-06-16','Interview Scheduled'),
(17,17,'2026-06-17','Applied'),
(18,18,'2026-06-18','Selected'),
(19,19,'2026-06-19','Rejected'),
(20,20,'2026-06-20','Applied');

INSERT INTO interviews
(application_id, round_name, interview_date, result, feedback)
VALUES
(1,'Technical Round','2026-06-10','Pending','SQL assessment pending'),
(2,'HR Round','2026-06-11','Selected','Good communication'),
(3,'Final Round','2026-06-12','Selected','Strong candidate'),
(4,'Technical Round','2026-06-13','Rejected','Needs SQL improvement'),
(5,'HR Round','2026-06-14','Pending','Awaiting feedback'),
(6,'Technical Round','2026-06-15','Selected','Good ETL knowledge'),
(7,'Technical Round','2026-06-16','Pending','Interview scheduled'),
(8,'Final Round','2026-06-17','Selected','Excellent performance'),
(9,'Technical Round','2026-06-18','Rejected','Lack of experience'),
(10,'HR Round','2026-06-19','Pending','Under review');

INSERT INTO status_history
(application_id, old_status, new_status)
VALUES
(1,'Applied','Interview Scheduled'),
(2,'Interview Scheduled','Selected'),
(3,'Interview Scheduled','Selected'),
(4,'Interview Scheduled','Rejected'),
(5,'Applied','Interview Scheduled'),
(6,'Applied','Interview Scheduled'),
(7,'Applied','Interview Scheduled'),
(8,'Interview Scheduled','Selected'),
(9,'Interview Scheduled','Rejected'),
(10,'Applied','Interview Scheduled');

INSERT INTO companies_1
(company_name, location, industry)
VALUES
('Infosys','Pune','IT Services'),
('TCS','Mumbai','IT Services'),
('Wipro','Hyderabad','IT Services'),
('Accenture','Bengaluru','Consulting'),
('Cognizant','Pune','IT Services'),
('Capgemini','Mumbai','IT Services'),
('Tech Mahindra','Pune','IT Services'),
('HCL Technologies','Noida','IT Services'),
('LTIMindtree','Mumbai','IT Services'),
('Persistent Systems','Pune','Software Development'),
('Oracle India','Bengaluru','Database Software'),
('IBM India','Bengaluru','Technology'),
('Deloitte','Hyderabad','Consulting'),
('KPMG','Mumbai','Consulting'),
('Infosys BPM','Pune','Business Process Management'),
('Clover Infotech','Mumbai','IT Services'),
('Mphasis','Pune','IT Services'),
('Hexaware Technologies','Navi Mumbai','IT Services'),
('Birlasoft','Pune','Software Services'),
('Zensar Technologies','Pune','IT Services');

SELECT *FROM jobs;
INSERT INTO jobs
(company_id, job_title, job_type, salary_package, openings, job_status)
VALUES
(1,'SQL Developer','Full-Time',450000,5,'Open'),
(2,'Data Analyst','Full-Time',500000,3,'Open'),
(3,'Business Analyst','Full-Time',550000,4,'Open'),
(4,'Database Developer','Full-Time',650000,2,'Open'),
(5,'Reporting Analyst','Full-Time',480000,3,'Open'),
(6,'ETL Developer','Full-Time',600000,4,'Open'),
(7,'SQL Developer','Full-Time',520000,5,'Open'),
(8,'BI Developer','Full-Time',700000,2,'Open'),
(9,'Data Engineer','Full-Time',800000,3,'Open'),
(10,'Database Administrator','Full-Time',750000,2,'Open'),
(11,'PL/SQL Developer','Full-Time',650000,4,'Open'),
(12,'Data Analyst','Full-Time',550000,5,'Open'),
(13,'Reporting Analyst','Full-Time',500000,3,'Open'),
(14,'Business Analyst','Full-Time',620000,2,'Open'),
(15,'SQL Developer','Full-Time',480000,4,'Open'),
(16,'Data Engineer','Full-Time',850000,2,'Open'),
(17,'ETL Developer','Full-Time',580000,3,'Open'),
(18,'BI Developer','Full-Time',720000,2,'Open'),
(19,'Database Developer','Full-Time',680000,3,'Open'),
(20,'PL/SQL Developer','Full-Time',640000,2,'Open');

select *from companies_1;
INSERT INTO candidates
(full_name, email, phone, city, experience_years)
VALUES
('Anish Shirsat','anish.shirsat@gmail.com','9876543201','Pune',0.0),
('Rahul Patil','rahul.patil@gmail.com','9876543202','Nashik',1.2),
('Sneha Joshi','sneha.joshi@gmail.com','9876543203','Mumbai',2.1),
('Amit Deshmukh','amit.deshmukh@gmail.com','9876543204','Pune',3.0),
('Priya Kulkarni','priya.kulkarni@gmail.com','9876543205','Nagpur',1.5),
('Rohit Jadhav','rohit.jadhav@gmail.com','9876543206','Aurangabad',0.8),
('Pooja Shinde','pooja.shinde@gmail.com','9876543207','Pune',2.4),
('Sagar More','sagar.more@gmail.com','9876543208','Mumbai',1.0),
('Komal Pawar','komal.pawar@gmail.com','9876543209','Kolhapur',0.5),
('Nikhil Chavan','nikhil.chavan@gmail.com','9876543210','Satara',2.7),
('Vaishnavi Patil','vaishnavi.patil@gmail.com','9876543211','Pune',1.8),
('Kiran Mane','kiran.mane@gmail.com','9876543212','Solapur',3.2),
('Tejas Bhosale','tejas.bhosale@gmail.com','9876543213','Pune',0.0),
('Neha Kshirsagar','neha.k@gmail.com','9876543214','Nashik',1.1),
('Akash Gaikwad','akash.gaikwad@gmail.com','9876543215','Mumbai',2.9),
('Sonal Jagtap','sonal.jagtap@gmail.com','9876543216','Pune',0.7),
('Yash Wagh','yash.wagh@gmail.com','9876543217','Nagpur',1.4),
('Shruti More','shruti.more@gmail.com','9876543218','Pune',2.2),
('Aditya Shinde','aditya.shinde@gmail.com','9876543219','Aurangabad',0.9),
('Rutuja Patil','rutuja.patil@gmail.com','9876543220','Kolhapur',1.6),
('Pratik Kadam','pratik.kadam@gmail.com','9876543221','Pune',3.5),
('Minal Desai','minal.desai@gmail.com','9876543222','Mumbai',2.0),
('Abhishek Jadhav','abhishek.jadhav@gmail.com','9876543223','Satara',1.3),
('Pallavi Chavan','pallavi.chavan@gmail.com','9876543224','Pune',0.4),
('Swapnil More','swapnil.more@gmail.com','9876543225','Nashik',2.8);

select *from jobs;
select *from applications;
select* from companies_1;
select *from candidates;
select *from interviews;
select *from recruiters;
select *from status_history;
INSERT INTO recruiters
(recruiter_name, email, company_id)
VALUES
('Neha Sharma','neha.sharma@infosys.com',1),
('Raj Verma','raj.verma@tcs.com',2),
('Pooja Singh','pooja.singh@wipro.com',3),
('Amit Kumar','amit.kumar@accenture.com',4),
('Sneha Rao','sneha.rao@cognizant.com',5),
('Vikas Mehta','vikas.mehta@capgemini.com',6),
('Anjali Patil','anjali.patil@techmahindra.com',7),
('Rohit Agarwal','rohit.agarwal@hcl.com',8),
('Priya Nair','priya.nair@ltimindtree.com',9),
('Karan Shah','karan.shah@persistent.com',10),
('Megha Joshi','megha.joshi@oracle.com',11),
('Saurabh Jain','saurabh.jain@ibm.com',12),
('Nikita Kulkarni','nikita.kulkarni@deloitte.com',13),
('Abhishek Gupta','abhishek.gupta@kpmg.com',14),
('Rutuja Deshmukh','rutuja.deshmukh@infosysbpm.com',15),
('Yash Patil','yash.patil@cloverinfotech.com',16),
('Komal Chavan','komal.chavan@mphasis.com',17),
('Akash More','akash.more@hexaware.com',18),
('Pallavi Jadhav','pallavi.jadhav@birlasoft.com',19),
('Swapnil Patwardhan','swapnil.patwardhan@zensar.com',20);

INSERT INTO status_history
(application_id, old_status, new_status)
VALUES
(1,'Applied','Interview Scheduled'),
(2,'Applied','Interview Scheduled'),
(3,'Interview Scheduled','Selected'),
(4,'Interview Scheduled','Rejected'),
(5,'Applied','Interview Scheduled'),
(6,'Applied','Interview Scheduled'),
(7,'Interview Scheduled','Selected'),
(8,'Applied','Interview Scheduled'),
(9,'Interview Scheduled','Rejected'),
(10,'Applied','Interview Scheduled'),
(11,'Applied','Interview Scheduled'),
(12,'Interview Scheduled','Selected'),
(13,'Applied','Interview Scheduled'),
(14,'Interview Scheduled','Rejected'),
(15,'Applied','Interview Scheduled'),
(16,'Applied','Interview Scheduled'),
(17,'Interview Scheduled','Selected'),
(18,'Applied','Interview Scheduled'),
(19,'Interview Scheduled','Rejected'),
(20,'Applied','Interview Scheduled');

SELECT application_id,
       new_status
FROM status_history
WHERE new_status='Selected';

SELECT new_status,
       COUNT(*) AS total
FROM status_history
GROUP BY new_status;

-- 1. Total Applications Per Company
SELECT c.company_name,
       COUNT(a.application_id) AS total_applications
FROM companies_1 c
JOIN jobs j
ON c.company_id = j.company_id
JOIN applications a
ON j.job_id = a.job_id
GROUP BY c.company_name
ORDER BY total_applications DESC;

SELECT c.company_name,
       COUNT(a.application_id) AS total_applications
FROM companies_1 c
JOIN jobs j
ON c.compnay_id = j.compnay_id
JOIN applications a
ON j.job_id = a.job_id
GROUP BY c.company_name
ORDER BY total_applications DESC;

DESC companies_1;
DROP TABLE companies_1;
CREATE TABLE companies_new (
    company_id INT PRIMARY KEY AUTO_INCREMENT,
    company_name VARCHAR(100) NOT NULL,
    location VARCHAR(100),
    industry VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO companies_new (company_name, location, industry)
VALUES
('Infosys','Pune','IT Services'),
('TCS','Mumbai','IT Services'),
('Wipro','Hyderabad','IT Services'),
('Accenture','Bengaluru','Consulting'),
('Cognizant','Pune','IT Services'),
('Capgemini','Mumbai','IT Services'),
('Tech Mahindra','Pune','IT Services'),
('HCL Technologies','Noida','IT Services'),
('LTIMindtree','Mumbai','IT Services'),
('Persistent Systems','Pune','Software Development'),
('Oracle India','Bengaluru','Database Software'),
('IBM India','Bengaluru','Technology'),
('Deloitte','Hyderabad','Consulting'),
('KPMG','Mumbai','Consulting'),
('Infosys BPM','Pune','Business Process Management'),
('Clover Infotech','Mumbai','IT Services'),
('Mphasis','Pune','IT Services'),
('Hexaware Technologies','Navi Mumbai','IT Services'),
('Birlasoft','Pune','Software Services'),
('Zensar Technologies','Pune','IT Services');

-- 1. Total Companies
SELECT COUNT(*) AS total_companies
FROM companies;

-- 2. Total Jobs
SELECT COUNT(*) AS total_jobs
FROM jobs;

-- 3. Total Candidates
SELECT COUNT(*) AS total_candidates
FROM candidates;

ALTER TABLE recruiters
ADD company_id INT;

-- 4. Total Applications
SELECT COUNT(*) AS total_applications
FROM applications;

-- 5. Company-wise Job Count
SELECT c.company_name,
       COUNT(j.job_id) AS total_jobs
FROM companies_new c
JOIN jobs j
ON c.company_id = j.company_id
GROUP BY c.company_name
ORDER BY total_jobs DESC;

-- 6. Most Applied Jobs
SELECT j.job_title,
       COUNT(a.application_id) AS total_applications
FROM jobs j
JOIN applications a
ON j.job_id = a.job_id
GROUP BY j.job_title
ORDER BY total_applications DESC;

-- 7. Selected Candidates
SELECT c.full_name,
       j.job_title,
       a.current_status
FROM candidates c
JOIN applications a
ON c.candidate_id = a.candidate_id
JOIN jobs j
ON a.job_id = j.job_id
WHERE a.current_status = 'Selected';

-- 8. Rejected Candidates
SELECT c.full_name,
       j.job_title,
       a.current_status
FROM candidates c
JOIN applications a
ON c.candidate_id = a.candidate_id
JOIN jobs j
ON a.job_id = j.job_id
WHERE a.current_status = 'Rejected';

-- 9. Average Salary
SELECT ROUND(AVG(salary_package),2) AS average_salary
FROM jobs;

-- 10. Top 5 Highest Paying Jobs
SELECT job_title,
       salary_package
FROM jobs
ORDER BY salary_package DESC
LIMIT 5;

-- 11. Window Function (RANK)
SELECT job_title,
       salary_package,
       RANK() OVER(ORDER BY salary_package DESC) AS salary_rank
FROM jobs;

-- 12. ROW_NUMBER()
SELECT full_name,
       experience_years,
       ROW_NUMBER() OVER(ORDER BY experience_years DESC) AS candidate_rank
FROM candidates;

-- 13. CTE
WITH selected_candidates AS
(
    SELECT candidate_id
    FROM applications
    WHERE current_status='Selected'
)
SELECT COUNT(*) AS total_selected
FROM selected_candidates;

-- 14. View
CREATE VIEW vw_selected_candidates AS
SELECT c.full_name,
       j.job_title,
       a.current_status
FROM candidates c
JOIN applications a
ON c.candidate_id = a.candidate_id
JOIN jobs j
ON a.job_id = j.job_id
WHERE a.current_status='Selected';

-- 15.Stored Procedure 
DELIMITER //

CREATE PROCEDURE GetSelectedCandidates()
BEGIN
    SELECT c.full_name,
           j.job_title,
           a.current_status
    FROM candidates c
    JOIN applications a
      ON c.candidate_id = a.candidate_id
    JOIN jobs j
      ON a.job_id = j.job_id
    WHERE a.current_status = 'Selected';
END //

DELIMITER ;

-- 16.View
CREATE VIEW vw_open_jobs AS
SELECT c.company_name,
       j.job_title,
       j.salary_package
FROM companies_new c
JOIN jobs j
ON c.company_id = j.company_id
WHERE j.job_status = 'Open';

-- 17.Index
CREATE INDEX idx_candidate_email
ON candidates(email);

-- trigger for status_history
CREATE TRIGGER trg_application_status_change
AFTER UPDATE ON applications
FOR EACH ROW
BEGIN
    IF OLD.current_status <> NEW.current_status THEN
        INSERT INTO status_history
        (application_id, old_status, new_status)
        VALUES
        (NEW.application_id,
         OLD.current_status,
         NEW.current_status)
    END IF;
END;

-- Top Hiring Companies
SELECT c.company_name,
       COUNT(*) AS hires
FROM companies_new c
JOIN jobs j ON c.company_id=j.company_id
JOIN applications a ON j.job_id=a.job_id
WHERE a.current_status='Selected'
GROUP BY c.company_name
ORDER BY hires DESC;

-- Candidate Funnel
SELECT current_status,
       COUNT(*) AS total
FROM applications
GROUP BY current_status;

WITH company_hires AS (
   SELECT c.company_name,
          COUNT(*) hires
   FROM companies_new c
   JOIN jobs j ON c.company_id=j.company_id
   JOIN applications a ON j.job_id=a.job_id
   WHERE a.current_status='Selected'
   GROUP BY c.company_name
)
SELECT *
FROM company_hires
WHERE hires > 2;

-- 1) Basic SELECT + Filtering
SELECT * FROM candidates;

SELECT * 
FROM candidates
WHERE status = 'selected';

-- (a) Company-wise candidate count
SELECT c.company_name
FROM companies_new c
JOIN recruiters r ON c.company_id = r.company_id
JOIN applications a ON r.recruiters_id = a.recruiters_id
GROUP BY c.company_name;


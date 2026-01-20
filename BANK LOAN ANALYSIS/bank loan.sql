CREATE DATABASE BANKLOANDB;

SELECT * FROM financial_loan;

use bankloandb;

select emp_title, sum(id) as totalid from financial_loan
group by emp_title
having totalid > 20000;

select emp_title,max(annual_income) as top3 from financial_loan
group by emp_title
order by top3 desc
limit 3;

SELECT id,emp_title from financial_loan
where emp_title = "";

SELECT COUNT(id) as total_loan_application from financial_loan;

SELECT COUNT(id) as total_loan_application from financial_loan
where month(issue_date) = 12
and year(issue_date) = 2021;

alter table financial_loan
modify issue_date date;

SELECT COUNT(id) AS MTD_total_loan_application
FROM financial_loan
WHERE STR_TO_DATE(issue_date, '%d-%m-%Y') >= '2021-12-01'
  AND STR_TO_DATE(issue_date, '%d-%m-%Y') < '2022-01-01';
  
SELECT COUNT(id) AS PMTD_total_loan_application
FROM financial_loan
WHERE STR_TO_DATE(issue_date, '%d-%m-%Y') >= '2021-11-01'
  AND STR_TO_DATE(issue_date, '%d-%m-%Y') <= '2021-11-30';

select sum(loan_amount) as total_funded_amount from financial_loan;

SELECT sum(loan_amount) AS MTD_total_funded_amount
FROM financial_loan
WHERE STR_TO_DATE(issue_date, '%d-%m-%Y') >= '2021-12-01'
  AND STR_TO_DATE(issue_date, '%d-%m-%Y') < '2022-01-01';

SELECT sum(loan_amount) AS PMTD_total_funded_amount
FROM financial_loan
WHERE STR_TO_DATE(issue_date, '%d-%m-%Y') >= '2021-11-01'
  AND STR_TO_DATE(issue_date, '%d-%m-%Y') <= '2021-11-30';
  
select sum(total_payment) as total_amount_received from financial_loan;

SELECT sum(total_payment) AS MTD_total_amount_received
FROM financial_loan
WHERE STR_TO_DATE(issue_date, '%d-%m-%Y') >= '2021-12-01'
AND STR_TO_DATE(issue_date, '%d-%m-%Y') < '2022-01-01';

SELECT sum(total_payment) AS PMTD_total_amount_received
FROM financial_loan
WHERE STR_TO_DATE(issue_date, '%d-%m-%Y') >= '2021-11-01'
AND STR_TO_DATE(issue_date, '%d-%m-%Y') <= '2021-11-30';

select avg(int_rate)*100 as avg_interest_rate from financial_loan;

SELECT avg(int_rate)*100 AS MTD_avg_interest_rate
FROM financial_loan
WHERE STR_TO_DATE(issue_date, '%d-%m-%Y') >= '2021-12-01'
AND STR_TO_DATE(issue_date, '%d-%m-%Y') < '2022-01-01';

SELECT avg(int_rate)*100 AS PMTD_avg_interest_rate
FROM financial_loan
WHERE STR_TO_DATE(issue_date, '%d-%m-%Y') >= '2021-11-01'
AND STR_TO_DATE(issue_date, '%d-%m-%Y') <= '2021-11-30';

select avg(dti)*100 as avg_dti from financial_loan;

SELECT avg(dti)*100 AS MTD_avg_dti
FROM financial_loan
WHERE STR_TO_DATE(issue_date, '%d-%m-%Y') >= '2021-12-01'
AND STR_TO_DATE(issue_date, '%d-%m-%Y') < '2022-01-01';

SELECT avg(dti)*100 AS PMTD_avg_dti
FROM financial_loan
WHERE STR_TO_DATE(issue_date, '%d-%m-%Y') >= '2021-11-01'
AND STR_TO_DATE(issue_date, '%d-%m-%Y') <= '2021-11-30';

SELECT COUNT(*) * 100.0 / (SELECT COUNT(*) FROM financial_loan) AS Good_Loan_Percentage
FROM financial_loan
WHERE loan_status IN ('Fully Paid', 'Current');

select count(id) as total_good_loan_application from financial_loan
where loan_status IN ('Fully Paid', 'Current');

select SUM(loan_amount) as total_good_funded_amount from financial_loan
where loan_status IN ('Fully Paid', 'Current');

select SUM(total_payment) as total_good_amount_received from financial_loan
where loan_status IN ('Fully Paid', 'Current');

select count(*)*100/
(select count(*) from financial_loan) as bad_loan_percentage
from financial_loan
where loan_status = "Charged off";

select sum(total_payment) as bad_loan_amount_received from financial_loan
where loan_status = "Charged off";

select 
      loan_status, 
	  count(id) as loancount,
      sum(loan_amount) as total_funded_amount,
      sum(total_payment) as total_amount_received,
      avg(int_rate)*100 interest_rate,
      avg(dti)*100 DTI
from financial_loan
group by loan_status;

select 
     loan_status,
     sum(loan_amount) as MTD_total_funded_amount,
     sum(total_payment) as MTD_total_amount_received
     from financial_loan
where str_to_date(issue_date, '%d-%m-%Y') >= '2021-12-01'
and str_to_date(issue_date, '%d-%m-%Y') < '2022-01-01'
group by loan_status;

select 
      month(str_to_date(issue_date, '%d-%m-%Y')) as monthnumber,
      monthname(str_to_date(issue_date, '%d-%m-%Y')) as monthname,
      count(id) as total_loan_application,
      sum(total_payment) as total_amount_received,
      sum(loan_amount) as total_funded_amount
      from financial_loan 
group by monthnumber, monthname
order by monthnumber asc;

select 
      address_state, 
      count(id) as totalcount,
      sum(total_payment) as total_amount_received,
      sum(loan_amount) as total_funded_amount
from financial_loan
group by address_state
order by address_state asc;

select term, 
       count(id) as total_loan_application,
       sum(total_payment) as total_amount_received,
       sum(loan_amount) as total_funded_amount 
from financial_loan
group by term
order by term asc;

select emp_length, 
       count(id) as total_loan_application,
       sum(total_payment) as total_amount_received,
       sum(loan_amount) as total_funded_amount 
from financial_loan
group by emp_length
order by emp_length asc;

select purpose, 
       count(id) as total_loan_application,
       sum(total_payment) as total_amount_received,
       sum(loan_amount) as total_funded_amount 
from financial_loan
group by purpose
order by purpose asc;

select home_ownership, 
       count(id) as total_loan_application,
       sum(total_payment) as total_amount_received,
       sum(loan_amount) as total_funded_amount 
from financial_loan
group by home_ownership
order by home_ownership asc;

SELECT @@hostname;


alter table financial_loan
modify issue_date date;

DESC financial_loan;

UPDATE financial_loan
SET issue_date = STR_TO_DATE(issue_date, '%d-%m-%Y');

SET SQL_SAFE_UPDATES = 1;

UPDATE financial_loan
SET next_payment_date = STR_TO_DATE(next_payment_date, '%d-%m-%Y');

ALTER TABLE financial_loan
MODIFY next_payment_date DATE;

select issue_date from financial_loan;

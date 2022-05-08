--------------------------------------------------------------------------------
--EMPLOYEES DATABASE CHALLENGE
--------------------------------------------------------------------------------

--Deliverable 1--

Select e.emp_no,
e.first_name,
e.last_name,
t.title,
t.from_date,
t.to_date
--into retirement_titles
from employees as e
inner join titles as t
on (e.emp_no = t.emp_no)
where(e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
order by emp_no ASC;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (retirement_titles) emp_no,
first_name,
last_name,
title
--INTO Unique_titles
FROM retirement_titles
WHERE (to_date = '9999-01-01')

select title, count(title)
--into retiring_titles
from unique_titles
group by title
order by count(title) DESC;

select * from employees
select * from dept_emp
select * from titles

--Deliverable 2--

Select distinct on (e.emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date, d.from_date, d.to_date, t.title
--into mentorship_eligibility
from employees as e
join dept_emp as d
on (d.emp_no = e.emp_no)
join titles as t
on (t.emp_no = e.emp_no)
where (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (d.to_date = '9999-01-01')
order by emp_no ASC
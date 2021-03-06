-- Mentorship Eligibility
SELECT DISTINCT ON(employees.emp_no)
      employees.emp_no,
      first_name,
      last_name,
      birth_date,
      dept_emp.
      from_date,
      dept_emp.to_date,
      title

FROM employees
JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
JOIN titles ON employees.emp_no = titles.emp_no
WHERE dept_emp.to_date = '9999-01-01'

AND (birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY employees.emp_no

;

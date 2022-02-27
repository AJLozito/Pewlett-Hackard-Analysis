SELECT COUNT(emp_no),
		  title,
		  ROUND(AVG(age),0) AS age,
		  ROUND(AVG(tenure),0) AS tenure

FROM
(SELECT employees.emp_no,
		 first_name,
		 last_name,
 	  	 title,
 	    	 from_date,
 		 to_date,
        	 (CURRENT_DATE-birth_date)/365 AS age,
       		 (CURRENT_DATE-hire_date)/365 AS tenure

FROM employees JOIN titles ON employees.emp_no = titles.emp_no
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND to_date = '9999-01-01'
ORDER BY employees.emp_no) 

A
GROUP BY title
ORDER BY COUNT DESC

;

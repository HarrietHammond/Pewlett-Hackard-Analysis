# Pewlett-Hackard-Analysis

## Overview of Analysis

### Pewlett Hackard a large company with thousands of employees is strategically looking toward the future in two ways. To analyze and identify potential retirees and employees who are eligible for mentorship to be prepared for the next best move. This analysis will help future-proof Pewlett Hackard and steer it in the right direction. SQL will be used for the analysis due to the amount of data. 

## Results:

•	A data set of approximately 300,024 rows of distinct employees was analysed using SQL.

![image](https://user-images.githubusercontent.com/112135658/195774747-0f0b1eb9-e876-4a75-8cf6-351f886c4c4f.png)


•	A query was written and executed to create a retirement titles CSV table for employees who are born between January 1, 1952 and December 31, 1955.                 

41,380 eligible retirees were identified. 1549 employees were identified to be mentorship eligible and were born in the year 1965.


![image](https://user-images.githubusercontent.com/112135658/195774858-82ff8804-827d-4e39-8b17-158ca3c313e5.png)


•	A query was written and executed to create a Unique Titles table that contains the employee number, first and last name, and most recent title. A unique titles table was generated to clean up the retirement title table to remove any duplicates based on title changes within the period of employment for the upcoming retirees.
72,458 employees born between 1952 and 1955 were identified not to be due for retirement.

 

•	A final query was written and executed to create a Mentorship Eligibility table for current employees who were born between January 1, 1965 and December 31, 1965. This was exported and saved as mentorship_eligibility.csv file. 240,124 employees were found to be mentorship eligible and were born between 1952-01-01 to 1965-12-31.


![image](https://user-images.githubusercontent.com/112135658/195774965-8e39c350-c6f3-4484-88cb-424c2d18e4f4.png)


## Summary

25591 roles have to be filled as the "silver tsunami" begins to make animpact.

![image](https://user-images.githubusercontent.com/112135658/195774541-69e01701-64f6-4668-8798-5c2637d81c54.png)


85,108 employees eligible for retirement because thier to_date is not equal to 9999-01-01. These employees can mentor the next generation of Pewlett Hackard.

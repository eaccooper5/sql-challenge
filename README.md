# sql-challenge
Repo for SQL challenge
This assignment demonstrates user knowledge of SQL database creation, imports of csv data files, table creation, and utility of tables to organize data for relevant queries.

Installation:

With QuickDBD, identify data relationships and arrange the diagram so that it is readable. Export the diagram as schema.png. Save schema created as schema.sql and inital relationships writeup as schema.quickdbd.txt. Save all into "EmployeeSQL" directory.

With Postgres and pgAdmin, from the "EmployeeSQL" folder use schema.sql as executable file to first build the database. Import csv files located in "data" folder in this order:
employees.csv
titles.csv
dept_emp.csv
departments.csv
dept_manager.csv
salaries.csv

After importing tables, use "queries.sql" as executable file to run the assigned queries.

In a fit of overwhelmed pique, install Postgres extension to VSCode and run everything from there.

Usage:

Usage for educational purposes.

Documentation:

Acknowledgments:
Kourt Bailey who walked me through the ERD setup in a tutoring session. Using QuickDBD, we went over data types and relationships. I then exported the schema from there.
Bryan Johnson with whom I also discussed ERD construction and syntax. Bryan also made the recommendation of using a Postgres extension for VSCode and helped me install it. When I reviewed my inital schema with Bryan, we discovered that there was more than one table that would require composite keys and that the "salary" table did not have a primary key and would not import properly until that was changed.
James Forrest with whom I reviewed syntax in the Data Analysis portion, speficially for phrasing in query 2 (listing employees from 1986) and query 7 (listing employees in Sales and Development).
Otherwise referenced class lecture notes and reviewed the lectures and GitLab resources.

Contact Information:
erinaccooper@gmail.com

Examples and Screenshots:

QuickDBD data relationship map
https://github.com/eaccooper5/sql-challenge/blob/main/EmployeeSQL/schema.png

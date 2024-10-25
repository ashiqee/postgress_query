
SELECT * FROM students;

SELECT country from students
    GROUP BY country;


SELECT country,count(*),avg(age) from students
    GROUP BY country;

SELECT country,avg(age) from students
    GROUP BY country;

SELECT country,avg(age) from students
    GROUP BY country
        HAVING avg(age)>22;


SELECT extract(YEAR from dob) as birth_year,count(*)
    FROM students
    GROUP BY birth_year;

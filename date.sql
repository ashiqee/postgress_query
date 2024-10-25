

SHOW timezone;

SELECT now();

CREATE Table timeZ(ts TIMESTAMP without time zone,tsz TIMESTAMP with time zone);


INSERT INTO timez VALUES('2024-01-12 10:45:00','2024-01-12 10:56:00');

SELECT * FROM timez;

SELECT CURRENT_DATE;

SELECT now()::date;

SELECT now()::time;

SELECT to_char(now(),'dd/mm/yyyy');


SELECT CURRENT_DATE - INTERVAL '1 year 2 month';

SELECT age(CURRENT_DATE,'1994-09-22');

SELECT * , age(CURRENT_DATE ,dob) FROM students;

SELECT extract(MONTH FROM '2024-01-25'::date);

SELECT 'y'::BOOlEAN;


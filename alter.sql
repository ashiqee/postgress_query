-- Active: 1729489816636@@127.0.0.1@5432@ph
SELECT * FROM person2;

CREATE TABLE person2(
    id serial PRIMARY KEY,
    user_name VARCHAR(50) not NULL,
    age INTEGER check (age>=18)
)


-- INSERT

INSERT INTO person2 VALUES(1,'tuser',45);

INSERT INTO person2 VALUES(2,'tuser2',45,'test@mail.com');


-- ALTER

ALTER TABLE person2
        ADD COLUMN email VARCHAR(25) DEFAULT 'default@gmail.com' NOT NULL;

ALTER TABLE person2
        DROP COLUMN email;

ALTER TABLE person2
        RENAME COLUMN age to user_age;

ALTER TABLE person2
        ALTER COLUMN user_name TYPE VARCHAR(50);
        
ALTER TABLE person2
        ALTER COLUMN user_age set NOT NULL;

ALTER TABLE person2
        ALTER COLUMN user_age drop NOT NULL;


ALTER TABLE person2
        ADD constraint unique_person2_user_age UNIQUE(user_age);



ALTER TABLE person2
        DROP constraint unique_person2_user_age;


TRUNCATE TABLE person2;

DROP TABLE person2;
CREATE TABLE person (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT
);

SELECT * FROM person;
INSERT INTO person (name, age)
VALUES
('Rabbinur', 25),
('Hasan', 30),
('Sakib', 28);

SELECT * FROM person;

ALTER  TABLE person
ADD COLUMN email VARCHAR(25) DEFAULT 'default@example.com' NOT NULL;
ALTER  TABLE person
DROP COLUMN email 



SELECT * FROM person;

INSERT into person values(4,'Suyel',22)




select * from person;



ALTER TABLE person
ADD COLUMN address VARCHAR(100) DEFAULT 'Unknown' NOT NULL;

SELECT * FROM person;

INSERT INTO person VALUES(8,'Suyel',22,'Dhaka');

SELECT * FROM person;

SELECT age, COUNT(*)
FROM person
GROUP BY age
HAVING COUNT(*) > 1;

SELECT * FROM person;


UPDATE person
SET age = 23
WHERE id = 4;

ALTER TABLE person 
ADD constraint uniqe_person_user_age UNIQUE(age)
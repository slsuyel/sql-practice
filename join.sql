
CREATE TABLE "user" (
    id SERIAL PRIMARY KEY,
    "user_name" VARCHAR(100) NOT NULL,
    age INT NOT NULL
);

CREATE TABLE post (
    id SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    user_id INT NOT NULL,
    FOREIGN KEY (user_id)
        REFERENCES "user"(id)
        ON DELETE CASCADE
);




INSERT INTO "user" ("user_name", age)
VALUES
('John Doe', 28),
('Jane Smith', 24),
('Alice Johnson', 31),
('Suyel Haque', 22),
('Rahim Ahmed', 35);


INSERT INTO post (title, user_id)
VALUES
('Learning PostgreSQL', 1),
('SQL Joins Explained', 1),
('Database Design', 2),
('Foreign Key Practice', 3),
('Advanced PostgreSQL', 4),
('Normalization Guide', 5);



SELECT * from "user";
SELECT * from post;



SELECT
   *
FROM post p
JOIN "user" u
ON p.user_id = u.id;


SELECT title, user_name FROM post
    JOIN  "user" ON post.user_id = "user".id
     
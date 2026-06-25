CREATE TABLE "user"(
    "id" SERIAL PRIMARY KEY,
    "userName" VARCHAR(100) NOT NULL
);


CREATE TABLE post(
    "id" SERIAL PRIMARY KEY,
    "title" VARCHAR(100) NOT NULL,
    "user_id" INTEGER REFERENCES "user"(id)
);


select * from "user";

INSERT INTO "user"("userName") VALUES ('John Doe'), ('Jane Smith'), ('Alice Johnson');

SELECT * FROM "user";



INSERT INTO post("title", "user_id") VALUES ('First Post', 1), ('Second Post', 2), ('Third Post', 3);

Select * from post;
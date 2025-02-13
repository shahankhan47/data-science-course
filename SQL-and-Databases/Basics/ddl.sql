DDL - Define, change or drop data.

=========================================CREATE===================================================
CREATE TABLE table_name (
    column_1 datatype optional_parameters,
    column_2 datatype optional_parameters,
    ...
    column_n datatype optional_parameters,
)

CREATE TABLE provinces (
    id char(2) PRIMARY KEY NOT NULL
    name varchar(24)
)

CREATE TABLE author (
    id CHAR(2) PRIMARY KEY NOT NULL,
    lastname VARCHAR(15) NOT NULL,
    firstname VARCHAR(15) NOT NULL,
    email VARCHAR(40),
    city VARCHAR(15),
    country VARCHAR(15)
)

=========================================ALTER===================================================
ALTER TABLE table_name                - use only with either ADD/MODIFY/DROP. Not in combination.
    ADD COLUMN column_1 datatype,
    ...
    ADD COLUMN column_n datatype;
    MODIFY existing_column datatype;
    DROP COLUMN existing_column;


=========================================DROP===================================================
DROP TABLE table_name

=========================================TRUNCATE===================================================
TRUNCATE TABLE table_name
    IMMEDIATE;                  - deletes all rows in the table.
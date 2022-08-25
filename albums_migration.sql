-- Complete - MySQL - Tables Exercise
DROP TABLE IF EXISTS quotes;
CREATE TABLE quotes
(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(50),
    name VARCHAR(50),
    release_date DATE,
    sales FLOAT,
    genre VARCHAR(25),
    PRIMARY KEY (id)
);
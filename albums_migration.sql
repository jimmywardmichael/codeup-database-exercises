USE
codeup_test_db;
DROP TABLE IF EXISTS albums;
CREATE TABLE albums
(
    id INT PRIMARY KEY UNSIGNED NOT NULL AUTO_INCREMENT,
    artist CHAR,
    name CHAR,
    release_date INT,
    sales FLOAT,
    genre VARCHAR,
);
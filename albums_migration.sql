USE codeup_test_db;
DROP TABLE IF EXISTS albums;
CREATE TABLE albums(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist CHAR,
    name CHAR,
    release_date INT,
    sales FLOAT,
    genre VARCHAR,
    PRIMARY KEY (id)
);
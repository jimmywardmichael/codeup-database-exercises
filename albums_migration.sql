USE codeup_test_db;
DROP TABLE IF EXISTS albums;
CREATE TABLE albums(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist_name CHAR(50)NOT NULL,
    record_name CHAR(100)NOT NULL,
    release_date INT(4) NOT NULL,
    sales FLOAT(10) NOT NULL,
    genre CHAR(50) NOT NULL,
    PRIMARY KEY (id)
);
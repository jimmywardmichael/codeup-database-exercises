USE
codeup_test_db;
DROP TABLE IF EXISTS albums;
CREATE TABLE albums
(
    id           INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist       CHAR    NOT NULL,
    record_name         CHAR    NOT NULL,
    release_date INT     NOT NULL,
    sales        FLOAT   NOT NULL,
    genre        VARCHAR NOT NULL,
        PRIMARY KEY (id)
);
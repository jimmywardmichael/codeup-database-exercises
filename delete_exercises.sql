-- Albums released after 1991
SELECT album_name, release_date AS 'Albums release after 1991' FROM albums WHERE release_date > 1991;
DELETE FROM albums WHERE release_date > 1991;

-- Albums with the genre 'disco'
SELECT artist_name, genre AS 'Albums with the genre ''Disco'' ' FROM albums WHERE genre = 'Disco';
DELETE FROM albums WHERE genre = 'Disco';

-- Albums by 'Whitney Houston' (...or maybe an artist of your choice)
SELECT artist_name AS 'Albums by Whitney Houston', album_name FROM albums WHERE artist_name = 'Whitney Houston';
DELETE FROM albums WHERE artist_name = 'Whitney Houston';

-- re-rendering 'albums' information to check the result of DELETE statements
SELECT artist_name, release_date, genre FROM albums;
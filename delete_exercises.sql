USE codeup_test_db;

-- Albums released after 1991
SELECT record_name, release_date AS 'Albums release after 1991'
FROM albums
WHERE release_date > 1991;
-- converting to delete statements
DELETE FROM albums WHERE release_date > 1991;

-- Albums with the genre 'disco'
SELECT artist_name, genre AS 'Albums with the genre ''disco'' '
FROM albums
WHERE genre = 'Disco';
-- converting to delete statements
DELETE FROM albums WHERE genre = 'Disco';


-- Albums by 'Whitney Houston' (...or maybe an artist of your choice)
SELECT artist_name AS ' ''Albums by Whitney Houston'' ', record_name
FROM albums
WHERE artist_name = 'Whitney Houston';
-- converting to delete statements
DELETE FROM albums WHERE artist_name = 'Whitney Houston';


SELECT artist_name, release_date, genre FROM albums;
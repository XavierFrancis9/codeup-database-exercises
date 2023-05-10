USE codeup_test_db;

-- The name of all albums by Pink Floyd.
SELECT record_name AS 'Pink Floyd Albums'
FROM albums
WHERE artist_name = 'Pink Floyd';

-- The year Sgt. Pepper's Lonely Hearts Club Band was released
SELECT release_date as 'Sgt. Pepper''s Lonely Hearts Club Band release year'
FROM albums
WHERE record_name = 'Sgt. Pepper''s Lonely Hearts Club Band';

-- The genre for Nevermind
SELECT genre as 'Nevermind Genre'
FROM albums
WHERE record_name = 'Nevermind';

-- Which albums were released in the 1990s
SELECT record_name as 'Albums of the 90s'
FROM albums
WHERE release_date >= 1990;

-- Which albums had less than 20 million certified sales
SELECT record_name as 'Albums with lass than 20 million sales'
FROM albums
WHERE sales < 20;

-- All the albums with a genre of "Rock"
SELECT record_name as 'rock albums'
FROM albums
WHERE genre = 'Rock';
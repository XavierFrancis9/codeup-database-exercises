USE codeup_test_db;

-- All albums in your table.
    SELECT record_name AS 'ALl record name from Albums'
    FROM albums;

    UPDATE albums
    SET sales = sales * 10
    Where sales;

    SELECT artist_name, record_name, sales
    FROM albums;


-- all albums released before 1980
--     SELECT record_name AS 'All records released prior to 1980'
--     FROM albums
--     WHERE release_date < 1980
--     UPDATE albums
--     SET release_date = 1800
--     WHERE release_date < 1980;
-- all albums by micheal jackson

--     SELECT record_name AS 'all records by Micheal Jackson'
--     FROM albums
--     WHERE artist_name = 'Micheal Jackson';
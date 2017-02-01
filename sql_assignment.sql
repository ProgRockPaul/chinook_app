-- SQL Assignment
-- Check out [W3Schools' SQL Reference](http://www.w3schools.com/sql/sql_syntax.asp) as a reference.

-- Provide one or more SQL queries that retrieve the requested data
-- below each of the following questions:

-- 1) Find the albums recorded by the artist Queen.
-- SELECT id FROM artists WHERE name = 'Queen'; found the ID of Artist Queen
-- SELECT title FROM albums WHERE artist_id = '51';


-- 2) [Count](http://www.w3schools.com/sql/sql_func_count.asp) how many tracks belong to the media type "Protected MPEG-4 video file".

SELECT id FROM media_types WHERE name = 'Protected MPEG-4 video file'; found the Id of media type = id 3
SELECT COUNT(name) FROM tracks WHERE media_type_id = '3'; 214 tracks

-- 3) Find the least expensive track that has the genre "Electronica/Dance".
SELECT id FROM genres WHERE name = 'Electronica/Dance';              ID= 15
 SELECT MIN(unit_price) FROM tracks WHERE genre_id = '15'; finds that the cheapest track is 0.99c
 SELECT unit_price, name FROM tracks WHERE genre_id = '15'; finds that the cheapest track is 0.99c
 SELECT unit_price, name FROM tracks WHERE genre_id = 15 ORDER BY unit_price ASC LIMIT 1; chooses the first track from the list arranged lowest to highest.

-- 4) Find the all the artists whose names start with A.
SELECT name FROM artists WHERE name LIKE 'A%';


-- 5) Find all the tracks that belong to playlist 1.
-- SELECT name FROM tracks WHERE id = 3402;  Band Members Discuss trackss from "Revelations"
SELECT track_id FROM playlists_tracks WHERE playlist_id = 1;

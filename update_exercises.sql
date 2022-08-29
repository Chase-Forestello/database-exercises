-- Complete - MySQL - Basic Statements Exercise
-- No use statement here because project was not using a connected database (used Adminer)

-- All albums in the table:
SELECT * FROM albums;

-- All albums release before 1980:
SELECT * FROM albums WHERE release_date < 1980;

-- All albums by Michael Jackson:
SELECT * FROM albums WHERE artist = "Michael Jackson";

-- All album sales * 10:
UPDATE albums
SET sales = sales * 10
WHERE sales != sales * 10;

-- All albums before 1980 - 100:
UPDATE albums
SET release_date = release_date - 100
WHERE release_date < 1980;

-- Changing Michael Jackson to Peter Jackson:
UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';

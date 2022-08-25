-- Complete - MySQL - Basic Statements Exercise

-- Albums release after 1991:
SELECT name FROM albums WHERE release_date > 1991;

-- Albums with genre of disco:
SELECT name FROM albums WHERE genre = "Disco";

-- Albums by Whitney Houston:
SELECT name FROM albums WHERE artist = 'Whitney Houston';

-- Removing albums released after 1991:
DELETE FROM albums WHERE release_date > 1991;

-- Removing albums with genre of disco:
DELETE FROM albums WHERE genre = "Disco";

-- Removing albums by Whitney Houston:
DELETE FROM albums WHERE artist = 'Whitney Houston';


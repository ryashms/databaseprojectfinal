--Artist Average Rating & Number of Ratings
SELECT  a.artist_id,
        a.name                           AS artist_name,
        ROUND(AVG(r.rating),2)           AS avg_rating,
        COUNT(*)                         AS num_ratings
FROM        artist       a
JOIN        song_artist sa ON sa.artist_id = a.artist_id
JOIN        rating       r  ON r.song_id   = sa.song_id
GROUP BY a.artist_id, a.name
ORDER BY avg_rating DESC;

--Song Average Rating
SELECT  s.title,
        AVG(r.rating) AS avg_rating
FROM    song   s
JOIN    rating r ON r.song_id = s.song_id
GROUP BY s.title
ORDER BY avg_rating DESC;

--Song Comments
SELECT review
FROM rating
WHERE song_id = 101;

SELECT review
FROM rating
WHERE song_id = 102;

SELECT review
FROM rating
WHERE song_id = 103;

SELECT review
FROM rating
WHERE song_id = 104;

SELECT review
FROM rating
WHERE song_id = 105;

--All Ratings Without Comments
SELECT user_id, song_id, rating, created_at
FROM rating;
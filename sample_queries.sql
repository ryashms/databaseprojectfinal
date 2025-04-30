SELECT  a.artist_id,
        a.name                           AS artist_name,
        ROUND(AVG(r.rating),2)           AS avg_rating,
        COUNT(*)                         AS num_ratings
FROM        artist       a
JOIN        song_artist sa ON sa.artist_id = a.artist_id
JOIN        rating       r  ON r.song_id   = sa.song_id
GROUP BY a.artist_id, a.name
ORDER BY avg_rating DESC;

SELECT title, AVG(score) AS avg_score
FROM   song   s
JOIN   rating r ON r.songid = s.songid
GROUP  BY title
ORDER  BY avg_score DESC;

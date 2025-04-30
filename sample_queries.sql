SELECT  a.artistid, /*average rating per artist */
        a.fname || NVL(' '||a.lname,'')  AS artist_name,
        ROUND(AVG(r.score),2)            AS avg_score,
        COUNT(*)                         AS num_ratings
FROM        artist        a
JOIN        song_artist  sa ON sa.artistid = a.artistid
JOIN        rating        r ON r.songid    = sa.songid
GROUP BY a.artistid, a.fname, a.lname
ORDER BY avg_score DESC;



SELECT title, AVG(score) AS avg_score
FROM   song   s
JOIN   rating r ON r.songid = s.songid
GROUP  BY title
ORDER  BY avg_score DESC;

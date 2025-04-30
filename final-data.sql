/* ---------- USERS ---------- */
INSERT INTO app_user VALUES (1,'Joseph','Garcia','joseph.G@ghmail.com','hash1');
INSERT INTO app_user VALUES (2,'Nathalia','Chimbay','Nathalia.C@ghmail.com','hash2');
INSERT INTO app_user VALUES (3,'Aryashma','Adhikari','Aryashma.A@ghmail.com','hash3');
INSERT INTO app_user VALUES (4,'Ebelechukwu','Nwafor','Ebelechukwu.N@ghmail.com','hash4');


/* ---------- ARTISTS ---------- */
INSERT INTO artist VALUES (1,'Taylor','Swift',      TO_DATE('1989-12-13','YYYY-MM-DD'));
INSERT INTO artist VALUES (2,'Ed','Sheeran',        TO_DATE('1991-02-17','YYYY-MM-DD'));
INSERT INTO artist VALUES (3,'Billie','Eilish',     TO_DATE('2001-12-18','YYYY-MM-DD'));
INSERT INTO artist VALUES (4,'Bad','Bunny',         TO_DATE('1995-08-22','YYYY-MM-DD'));
INSERT INTO artist VALUES (5,'Aubrey','Graham',     TO_DATE('1986-10-24','YYYY-MM-DD'));   

/* ---------- SONGS ---------- */
INSERT INTO song VALUES (101,'Blank Space',       2014);
INSERT INTO song VALUES (102,'Shape of You',      2017);
INSERT INTO song VALUES (103,'Bad Guy',           2019);
INSERT INTO song VALUES (104,'La Ramona',        2020);
INSERT INTO song VALUES (105,'God''s Plan',       2018);


/* ---------- SONG-ARTIST LINKS (many-to-many) ---------- */
INSERT INTO song_artist VALUES (101,1);      -- Taylor Swift
INSERT INTO song_artist VALUES (102,2);      -- Ed Sheeran
INSERT INTO song_artist VALUES (103,3);      -- Billie Eilish
INSERT INTO song_artist VALUES (104,4);      -- Bad Bunny
INSERT INTO song_artist VALUES (105,5);      -- Drake


/* ---------- RATINGS (one row per user–song) ---------- */
/* user 1 : Joseph */
INSERT INTO rating VALUES (1,101,5, TO_DATE('2025-04-01','YYYY-MM-DD'));  -- Blank Space
INSERT INTO rating VALUES (1,102,4, TO_DATE('2025-04-02','YYYY-MM-DD'));  -- Shape of You
INSERT INTO rating VALUES (1,103,3, TO_DATE('2025-04-03','YYYY-MM-DD'));  -- Bad Guy

/* user 2 : Nathalia */
INSERT INTO rating VALUES (2,104,5, TO_DATE('2025-04-04','YYYY-MM-DD'));  -- La Ramona
INSERT INTO rating VALUES (2,101,2, TO_DATE('2025-04-05','YYYY-MM-DD'));  -- Blank Space
INSERT INTO rating VALUES (2,105,4, TO_DATE('2025-04-06','YYYY-MM-DD'));  -- God's Plan

/* user 3 : Aryashma */
INSERT INTO rating VALUES (3,102,4, TO_DATE('2025-04-07','YYYY-MM-DD'));  -- Shape of You
INSERT INTO rating VALUES (3,103,5, TO_DATE('2025-04-08','YYYY-MM-DD'));  -- Bad Guy
INSERT INTO rating VALUES (3,105,3, TO_DATE('2025-04-09','YYYY-MM-DD'));  -- God's Plan

/* user 4 : Ebelechukwu */
INSERT INTO rating VALUES (4,101,3, TO_DATE('2025-04-10','YYYY-MM-DD'));  -- Blank Space
INSERT INTO rating VALUES (4,104,4, TO_DATE('2025-04-11','YYYY-MM-DD'));  -- La Ramona
INSERT INTO rating VALUES (4,105,5, TO_DATE('2025-04-12','YYYY-MM-DD'));  -- God's Plan


DROP TABLE rating        CASCADE CONSTRAINTS;
DROP TABLE song_artist   CASCADE CONSTRAINTS;
DROP TABLE song          CASCADE CONSTRAINTS;
DROP TABLE artist        CASCADE CONSTRAINTS;
DROP TABLE app_user      CASCADE CONSTRAINTS;

CREATE TABLE app_user (
  user_id   NUMBER(10)          PRIMARY KEY,
  username  VARCHAR2(30) UNIQUE NOT NULL,
  email     VARCHAR2(255) UNIQUE NOT NULL,
  password  VARCHAR2(100)       NOT NULL
);

CREATE TABLE artist (
  artist_id NUMBER(10)          PRIMARY KEY,
  name      VARCHAR2(120) UNIQUE NOT NULL
);

CREATE TABLE song (
  song_id      NUMBER(10)       PRIMARY KEY,
  title        VARCHAR2(200)    NOT NULL,
  release_year NUMBER(4)
);

CREATE TABLE song_artist (               
  song_id   NUMBER(10),
  artist_id NUMBER(10),
  PRIMARY KEY (song_id, artist_id),
  FOREIGN KEY (song_id)   REFERENCES song(song_id),
  FOREIGN KEY (artist_id) REFERENCES artist(artist_id)
);

CREATE TABLE rating (
  user_id    NUMBER(10),
  song_id    NUMBER(10),
  rating     NUMBER(1)      NOT NULL,
  review     VARCHAR2(1000),
  created_at TIMESTAMP      DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (user_id, song_id),
  FOREIGN KEY (user_id) REFERENCES app_user(user_id),
  FOREIGN KEY (song_id) REFERENCES song(song_id),
  CHECK (rating BETWEEN 1 AND 5)
);

INSERT INTO app_user VALUES (1,'NATC','NCHIMBAY@GMAIL.COM','NEWARKJULY1');
INSERT INTO app_user VALUES (2,'MUNAU','MCHISMO@GMAIL.COM','ROSELLE31');
INSERT INTO app_user VALUES (3,'JOSEPH','JGARCIA@GMAIL.COM','JOSEPH2005');
INSERT INTO app_user VALUES (4,'ARYSWAGGY','ARYAD@GMAIL.COM','ARYTHECOOLMAN');
INSERT INTO app_user VALUES (5,'EbelechukwuNwafor','Ebelechukwu.N@ghmail.com','BESTPROF');

INSERT INTO artist VALUES (201,'Bad Bunny');
INSERT INTO artist VALUES (202,'Clairo');
INSERT INTO artist VALUES (203,'Mitski');
INSERT INTO artist VALUES (204,'GenerationX');
INSERT INTO artist VALUES (205,'Drake');

INSERT INTO song VALUES (101,'EoO',  2025);
INSERT INTO song VALUES (102,'Bags', 2019);
INSERT INTO song VALUES (103,'A Pearl', 2018);
INSERT INTO song VALUES (104,'Dancing with Myself', 1981);
INSERT INTO song VALUES (105,'NOKIA', 2025);

INSERT INTO song_artist VALUES (101,201);  -- Bad Bunny
INSERT INTO song_artist VALUES (102,202);  -- Clairo
INSERT INTO song_artist VALUES (103,203);  -- Mitski
INSERT INTO song_artist VALUES (104,204);  -- Generation X
INSERT INTO song_artist VALUES (105,205);  -- Drake

INSERT INTO rating VALUES (1,101,5,'Truly an amazing song everyone should listen to',CURRENT_TIMESTAMP);
INSERT INTO rating VALUES (2,102,4,'This is so real', CURRENT_TIMESTAMP);
INSERT INTO rating VALUES (3,103,5,'The most beautiful and heartbreaking song I have ever heard, it is honestly too sad so I cant listen to it all the time', CURRENT_TIMESTAMP);
INSERT INTO rating VALUES (4,104,4,'Love it, need more music like this', CURRENT_TIMESTAMP);
INSERT INTO rating VALUES (5,105,4,'Alright, I wanted better', CURRENT_TIMESTAMP);

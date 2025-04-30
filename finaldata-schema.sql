DROP TABLE rating       CASCADE CONSTRAINTS;
DROP TABLE song_artist  CASCADE CONSTRAINTS;
DROP TABLE song         CASCADE CONSTRAINTS;
DROP TABLE artist       CASCADE CONSTRAINTS;
DROP TABLE app_user     CASCADE CONSTRAINTS;  

CREATE TABLE app_user (
  userid      NUMBER(10),            
  fname       VARCHAR2(30),
  lname       VARCHAR2(30),
  email       VARCHAR2(255) NOT NULL,
  pass_hash   VARCHAR2(100) NOT NULL,
  PRIMARY KEY (userid),
  UNIQUE (email)
);

CREATE TABLE artist (
  artistid    NUMBER(10),           
  fname       VARCHAR2(30),
  lname       VARCHAR2(30),
  dob         DATE,
  PRIMARY KEY (artistid)
);

CREATE TABLE song (
  songid        NUMBER(10),         
  title         VARCHAR2(200) NOT NULL,
  release_year  NUMBER(4),
  PRIMARY KEY (songid)
);


CREATE TABLE song_artist (
  songid   NUMBER(10),
  artistid NUMBER(10),
  PRIMARY KEY (songid, artistid),
  FOREIGN KEY (songid)  REFERENCES song(songid),
  FOREIGN KEY (artistid) REFERENCES artist(artistid)
);

CREATE TABLE rating (
  userid   NUMBER(10),
  songid   NUMBER(10),
  score    NUMBER(1) NOT NULL,
  rdate    DATE      DEFAULT SYSDATE,
  PRIMARY KEY (userid, songid),
  FOREIGN KEY (userid) REFERENCES app_user(userid),
  FOREIGN KEY (songid) REFERENCES song(songid),
  CHECK (score BETWEEN 1 AND 5)
);

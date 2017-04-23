-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here..

CREATE DATABASE tournament;

CREATE TABLE Player (
  id SERIAL PRIMARY KEY,
  name VARCHAR(30) NOT NULL
);

CREATE TABLE Match (
  match_id SERIAL PRIMARY KEY ,
  player1 int REFERENCES Player(id) NOT NULL ,
  player2 int REFERENCES Player(id) NOT NULL ,
  winner BOOLEAN NOT NULL -- True if player1 is the winner
);


-- the number of matches that each player played
CREATE VIEW numOfMatches AS
SELECT Player.id, count(Match.player1) as num
  FROM Player left join Match
  on Player.id = Match.player1
  GROUP BY Player.id;

-- the number of matches that each player win (rank)
CREATE VIEW numOfWins AS
SELECT Player.id, count(temp.player1) as num
  FROM Player LEFT JOIN (SELECT player1 FROM Match WHERE winner = TRUE) as temp
  on Player.id = temp.player1
  GROUP BY Player.id;
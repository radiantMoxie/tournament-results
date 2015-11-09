-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.



-- Database
DROP DATABASE IF EXISTS tournament;
CREATE DATABASE tournament;
\c tournament;

-- Storage of players with unique ID's as primary key
CREATE TABLE players(
	id serial PRIMARY KEY, 
	name text);

-- Storage of match results, referencing unique player ID's
CREATE TABLE matches(
	winnerID integer REFERENCES players(id),
	loserID integer REFERENCES players(id)
	);

-- A View storing each player's record of wins and losses
CREATE VIEW record AS
  SELECT p.id AS id, 
  	p.name AS name,
    (SELECT count(*) FROM matches AS m WHERE m.winnerID = p.id) AS wins,
    (SELECT count(*) FROM matches AS m WHERE m.loserID = p.id) AS losses
  FROM players AS p
  ORDER BY wins DESC;
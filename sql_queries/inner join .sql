CREATE TABLE game_plays (
	game_id INTEGER,
	event VARCHAR (60),
	secondaryType TEXT,
	period INTEGER,
	periodType VARCHAR (60),
	periodTime INTEGER,
	periodTimeRemaining INTEGER,
	goals_away  INTEGER,
	goals_home INTEGER
	
);
select*from game_plays

CREATE TABLE game_teams_stats (
	game_id INTEGER,
	team_id INTEGER,
	HoA VARCHAR (60),
	won INTEGER,
	settled_in VARCHAR,
	head_codch VARCHAR,
	goals INTEGER,
	shots INTEGER,
	hits INTEGER,
	pim INTEGER,
	powerPlayOpportunities INTEGER,
	powerPlayGoals INTEGER,
	faceOffWinPercentage REAL,
	giveaway INTEGER,
	takeaway INTEGER,
	block INTEGER,
	startRinkSide VARCHAR (60)
);

select*from game_teams_stats


SELECT team_info.franchiseid,team_info.shortname,team_info.teamname,team_info.abbreviation,
     game_teams_stats.game_id,
	 game_teams_stats.team_id,
	 game_teams_stats.HoA,
	 game_teams_stats.won,
     game_teams_stats.settled_in,
	 game_teams_stats.head_codch,
	 game_teams_stats.goals,
	 game_teams_stats.shots,
	 game_teams_stats.hits,
	 game_teams_stats.pim,
	 game_teams_stats.powerPlayOpportunities,
	 game_teams_stats.powerPlayGoals,
	 game_teams_stats.faceOffWinPercentage,
	 game_teams_stats.giveaway,
	 game_teams_stats.takeaway,
	 game_teams_stats.block,
	 game_teams_stats.startRinkSide
INTO teams
FROM team_info
INNER JOIN game_teams_stats
ON team_info.team_id = game_teams_stats.team_id;

select * from teams
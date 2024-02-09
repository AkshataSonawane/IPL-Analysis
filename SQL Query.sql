/*Create Table in database*/
Create Table ipl_matches_2008_2023
(
	id int Primary key,
	city varchar(50),
	date date,
	season varchar(50),
	match_number varchar(50),
	team1 varchar(50),
	team2 varchar(50),
	venue varchar(100),
	toss_winner varchar(50),
	toss_decision varchar(50),
	superover varchar(50),
	winning_team varchar(50),
	won_by varchar(50),
	margin varchar(50),
	method varchar(50),
	player_of_match varchar(50),
	Team1_Players varchar(200),
	Team2_Players varchar(200),
	umpire1 varchar(50),
	umpire2 varchar(50),
	TV_Umpire varchar(50),
	Match_Referee varchar(50)
);
	
select * from ipl_matches_2008_2023;

/*Upload values into table*/
copy ipl_matches_2008_2023 from 'C:\Data Science\Power BI\IPL analysis\data\IPL_Match_Summary_2008_2023.csv' delimiter ',' csv header;

select count(*) from ipl_matches_2008_2023;

/*Create 2nd Table in database*/
Create Table ipl_ball_by_ball_2008_2023
(
	id int Not Null,
	innings int,
	overs int,
	ballnumber int,
	batter varchar(50),
	bowler varchar(50),
	non_striker varchar(50),
	extra_type varchar(50),
	batsman_run int,
	extra_run int,
	total_run int,
	is_Boundary int,
	is_Wicket_Delivery int,
	player_out	varchar(50),
	kind varchar(50),
	fielders_involved varchar(50),
	is_Review_Taken	int,
	review_taken_by	varchar(50),
	umpire_during_review varchar(50),
	decision varchar(50),
	umpires_call int,
	BattingTeam varchar(50)
)

/*Upload values into table*/
copy ipl_ball_by_ball_2008_2023 from 'C:\Data Science\Power BI\IPL analysis\data\IPL_Each_Ball_Detail_2008_2023.csv' delimiter ',' csv header;

select count(*) from ipl_ball_by_ball_2008_2023;









































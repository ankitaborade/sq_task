/*Create a table named ‘deliveries’ with appropriate data types for columns*/
CREATE TABLE deliveries (
	id int, 
	inning INT,
	over INT, 
	ball INT, 
	batsman VARCHAR,
	non_striker VARCHAR, 
	blower VARCHAR, 
	batsman_run INT, 
	extra_run INT, 
	total_run INT,
	is_wicket INT, 
	dissmissal_kind VARCHAR, 
	player_dismissed VARCHAR, 
	filder_name VARCHAR, 
	extra_type VARCHAR, 
	batting_team VARCHAR, 
	bowling_team VARCHAR
);

/*Create a table named ‘matches’ with appropriate data types for columns*/
CREATE TABLE matches (
	id int, 
	city varchar, 
	date varchar, 
	player_of_match varchar, 
	venue varchar, 
	neutral_venue varchar, 
	team_1 varchar, 
	team_2 varchar, 
	toss_winner varchar, 
	toss_decision varchar, 
	winner varchar, 
	result varchar, 
	result_margin int, 
	eliminator varchar, 
	method varchar, 
	umpire1 varchar,
	umpire2 varchar
);

/*Import data from CSV file ’IPL_matches.csv’ attached in resources to ‘matches’*/
COPY matches from 'C:\Program Files\PostgreSQL\15\data\data_copy\IPL_matches.csv' DELIMITER ',' CSV HEADER;

/* Import data from CSV file ’IPL_Ball.csv’ attached in resources to ‘deliveries’*/
COPY deliveries from 'C:\Program Files\PostgreSQL\15\data\data_copy\IPL_Ball.csv' DELIMITER ',' CSV HEADER;

/*Select the top 20 rows of the deliveries table.*/
select * from deliveries limit 20;

/*Select the top 20 rows of the matches table.*/
select * from matches limit 20;

/* Fetch data of all the matches played on 2nd May 2013.*/
select * from matches where date = '02-05-2013';

/* Fetch data of all the matches where the margin of victory is more than 100 runs*/
select * from matches where result_margin > 100; 


/* Fetch data of all the matches where the final scores of both teams tied and order it in
descending order of the date.*/

select distinct winner from matches;
select * from matches where winner = 'NA' order by date desc; 

/*Get the count of cities that have hosted an IPL match.*/
select distinct count(city) as number_of_cities from matches;



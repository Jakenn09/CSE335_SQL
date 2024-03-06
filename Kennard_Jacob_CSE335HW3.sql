/* The first and last name of every player born in January (month 1) of 1995. */

Select nameFirst, nameLast
From people
Where birthYear='1995'AND birthMonth='1' ;

/* The average win-loss ratio (# wins / # losses) for all teams in the 2010 baseball season. */

Select AVG (W/L) as avg_winloss 
From Teams
Where yearid='2010' ;

/* The count of players who had a salary greater than or equal to $10 million in the year 2015. */

Select count(playerID)
From salaries NATURAL JOIN people 
Where salary>='10000000' and yearID='2015' ;

/* The Team ID, as well as the W/L record, for all teams who had more wins in 2008 than the team who won the most games in 2007. */

Select teamID, W,L
from teams
Where (w> (select max(W) from teams where yearID='2007')) and yearID='2008' ;

/* The player ID of every individual who played for 3 different colleges/universities */

Select playerID 
From collegeplaying
group by playerID
having count(DISTINCT(schoolID))=3 ;


SELECT * 
FROM people
WHERE birthYear = '1996';

SELECT DISTINCT people.nameFirst, people.nameLast
FROM people, awardsplayers
WHERE awardsplayers.awardID = 'Gold Glove' AND awardsplayers.yearID >= '2000';


SELECT teams.name, teams.yearID
FROM teams, people
WHERE people.nameFirst = 'Jose' AND people.nameLast = 'Hernandez';


SELECT teams.name, teams.W, teams.L
FROM teams
WHERE teams.yearID = '2018'
ORDER BY teams.W DESC ;


SELECT Distinct people.nameFirst, people.nameLast
From people, halloffame
Where halloffame.inducted = 'Y' ;

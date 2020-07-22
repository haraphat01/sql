SELECT matchid, player FROM goal 
  WHERE teamid LIKE '%GER'

  SELECT id,stadium,team1,team2
  FROM game WHERE id = 1012

  SELECT player, teamid, stadium, mdate FROM game
  JOIN goal ON (id=matchid)
    WHERE teamid = 'GER'


SELECT team1, team2, player FROM game
  JOIN goal ON game.id = goal.matchid
    WHERE goal.player LIKE 'Mario%'

    SELECT player, teamid, coach, gtime FROM goal
  JOIN eteam ON goal.teamid = eteam.id
    WHERE gtime <= 10


SELECT mdate, teamname FROM game
  JOIN eteam ON game.team1 = eteam.id
    WHERE eteam.coach = 'Fernando Santos'

    SELECT player FROM game
  JOIN goal ON game.id = goal.matchid
    WHERE stadium = 'National Stadium, Warsaw'

    SELECT DISTINCT player FROM game
  JOIN goal ON matchid = id 
    WHERE (game.team1='GER' OR game.team2='GER') AND goal.teamid != 'GER'

    SELECT teamname, COUNT(*) AS total_goals FROM eteam
  JOIN goal ON eteam.id = goal.teamid GROUP BY teamname ORDER BY teamname


SELECT stadium, COUNT(*) AS total_goals FROM game
  JOIN goal ON game.id = goal.matchid
    GROUP BY stadium ORDER BY stadium
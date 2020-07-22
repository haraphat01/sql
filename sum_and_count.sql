SELECT SUM(population)
FROM world


SELECT DISTINCT  continent FROM world

SELECT SUM(GDP) AS gdp_africa FROM world
  WHERE continent = 'Africa'

SELECT COUNT(*) FROM world WHERE area > 1000000

SELECT SUM(population) AS pop FROM world
  WHERE name IN ('Estonia', 'Latvia', 'Lithuania') 

  SELECT continent, COUNT(*) AS countries FROM world
  GROUP BY continent

  SELECT continent, COUNT(*) AS country FROM world
  WHERE population >= 10000000 GROUP BY continent


SELECT continent FROM world
  GROUP BY continent HAVING SUM(population) >= 100000000
#exercise one

SELECT name, continent, population FROM world


SELECT name FROM world
WHERE population > 200000000

SELECT name, gdp/population FROM world
WHERE population > 200000000 

SELECT name, population/1000000 from world
WHERE continent = 'South America';

SELECT name, population from world WHERE
name IN ('France','Germany','Italy')

SELECT name from world WHERE
name LIKE '%United%'

SELECT name, population, area FROM world WHERE
population > 250000000 OR area > 3000000

SELECT name, population, area FROM world
  WHERE area > 3000000 XOR population > 250000000

  SELECT name, ROUND(population/1000000, 2) AS pop_in_mill, ROUND(gdp/1000000000, 2) AS gdp_in_bill FROM world
  WHERE continent = 'South America'


SELECT name, ROUND(gdp/population, -3) AS per_capita_gdp FROM world
  WHERE gdp >= 1000000000000


SELECT name, capital FROM world
  WHERE LENGTH(name) = LENGTH(capital)

SELECT name FROM world
  WHERE name LIKE '%a%'
    AND name LIKE '%e%'
    AND name LIKE '%i%'
    AND name LIKE '%o%'
    AND name LIKE '%u%'
    AND name NOT LIKE '% %'
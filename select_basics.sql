#exercise one

SELECT population FROM world
  WHERE name = 'France'

#exercise two
  SELECT name, population FROM world
  WHERE name IN ('Brazil', 'Russia', 'India', 'China');

#exercise two
  SELECT name, area FROM world
  WHERE area BETWEEN 200000 AND 250000

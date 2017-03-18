# NR 1

SELECT name FROM world
  WHERE population >
     (SELECT population FROM world
      WHERE name='Russia')

# NR 2

SELECT name FROM world 
WHERE continent = 'Europe' AND gdp/population > (SELECT gdp/population FROM world 
WHERE name = 'United Kingdom')

# NR 3

SELECT name, continent FROM world
WHERE continent IN (
  (SELECT continent FROM world
   WHERE name = 'Argentina' OR name = 'Australia'))
ORDER BY name


# NR 4

SELECT name, population FROM world
WHERE population > (SELECT population FROM world WHERE name = 'Canada') AND population < (SELECT population FROM world WHERE name = 'Poland')

# NR 5

SELECT name FROM world WHERE gdp > (SELECT MAX(gdp) FROM world WHERE continent = 'Europe')

# NR 6 

SELECT name FROM world
WHERE gdp > ALL(SELECT gdp
                  FROM world
                 WHERE gdp > 0 AND continent = 'Europe')

# NR 7 

SELECT continent, name, area FROM world x
 WHERE area >= ALL
    (SELECT area FROM world y
      WHERE y.continent=x.continent
        AND area > 0)
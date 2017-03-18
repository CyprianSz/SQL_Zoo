# NR 1

SELECT SUM(population)
FROM world;

# NR 2

SELECT DISTINCT continent FROM world;

# NR 3

SELECT SUM(gdp) FROM world
WHERE continent = 'Africa';

# NR 4

SELECT COUNT(name) FROM world
WHERE area >= 1000000;

# NR 5

SELECT SUM(population) FROM world
WHERE name IN ('Estonia','Latvia','Lithuania');

# NR 6 

SELECT continent, COUNT(name) FROM world
GROUP BY continent;

# NR 7 

SELECT continent, COUNT(name) FROM world
WHERE population > 10000000
GROUP BY continent;

# NR 8

SELECT DISTINCT continent FROM world x
WHERE 100000000 < (SELECT SUM(population) FROM world y WHERE x.continent = y.continent);
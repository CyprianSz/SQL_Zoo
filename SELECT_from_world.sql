# NR 1

SELECT name, continent, population FROM world

# NR 2

SELECT name FROM world
WHERE population > 200000000

# NR 3

SELECT name, GDP/population
FROM world 
WHERE population > 200000000

# NR 4

SELECT name, population/1000000
FROM world
WHERE continent = 'South America'

# NR 5

SELECT name, population
FROM world
WHERE name IN ('France', 'Germany', 'Italy')

# NR 6 

SELECT name
FROM world
WHERE name LIKE '%United%'

# NR 7 

SELECT name, population, area
FROM world
WHERE area > 3000000 OR population > 250000000

# NR 8 

SELECT name, population, area
FROM world
WHERE area > 3000000 XOR population > 250000000

# NR 9

SELECT name, ROUND(population/1000000, 2), ROUND(gdp/1000000000, 2)
FROM world
WHERE continent = 'South America' 

# NR 10

SELECT name, ROUND(gdp/population, -3)
FROM world
WHERE gdp >= 1000000000000

# NR 11

SELECT name, capital
FROM world
WHERE LENGTH(capital) = LENGTH(name)

# NR 12

SELECT name, capital
FROM world
WHERE LEFT(name, 1) = LEFT(capital, 1) AND name <> capital

# NR 13

SELECT name
FROM world
WHERE name LIKE '%e%' 
AND name LIKE '%a%' 
AND name LIKE '%i%'
AND name LIKE '%o%'
AND name LIKE '%u%'
AND name NOT LIKE '% %'
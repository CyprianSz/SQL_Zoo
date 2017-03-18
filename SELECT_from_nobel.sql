# NR 1

SELECT yr, subject, winner
FROM nobel
WHERE yr = 1950

# NR 2

SELECT DISTINCT yr
FROM nobel
WHERE subject <> 'Phisics' AND subject <> 'Chemistry'

# NR 3

SELECT yr, subject
FROM nobel
WHERE winner = 'Albert Einstein'

# NR 4

SELECT winner
FROM nobel
WHERE subject = 'Peace' AND yr >= 2000;

# NR 5

SELECT *
FROM nobel
WHERE subject = 'Literature' AND yr >= 1980 AND yr <= 1989;

# NR 6 

SELECT *
FROM nobel 
WHERE winner IN ('Theodore Roosevelt', 
'Woodrow Wilson',
'Jimmy Carter',
'Barack Obama')

# NR 7 

SELECT winner
FROM nobel
WHERE winner LIKE 'John %'

# NR 8

SELECT *
FROM nobel
WHERE yr = 1980 AND subject = 'Physics' OR yr = 1984 AND subject = 'Chemistry'

# NR 9

SELECT * 
FROM nobel
WHERE subject NOT IN ('Chemistry', 'Medicine') AND yr = 1980

# NR 10

SELECT *
FROM nobel
WHERE subject = 'Medicine' AND yr < 1910 OR subject = 'Literature' AND yr >= 2004;

# NR 11

SELECT * 
FROM nobel
WHERE winner = 'PETER GRÜNBERG'

# NR 12

SELECT * 
FROM nobel
WHERE winner = 'EUGENE O''NEILL'

# NR 13

SELECT winner, yr, subject
FROM nobel
WHERE winner LIKE 'Sir%'
ORDER BY yr DESC, winner

# NR 14

SELECT winner, subject
  FROM nobel
 WHERE yr=1984
 ORDER BY subject IN ('Physics','Chemistry'),subject,winner
# NR 1

SELECT id, title
 FROM movie
 WHERE yr=1962;

# NR 2

SELECT yr
 FROM movie
 WHERE title = 'Citizen Kane';

# NR 3

SELECT id, title, yr
FROM movie
WHERE title LIKE '%Star Trek%'
ORDER BY yr;

# NR 4

SELECT id
FROM actor
WHERE name = 'Glenn Close';

# NR 5

SELECT id
FROM movie
WHERE title = 'Casablanca';

# NR 6 

SELECT name
FROM actor JOIN casting ON actor.id = actorid
           JOIN movie ON movieid = movie.id
WHERE movieid=11768;

# NR 7 

SELECT name
FROM actor JOIN casting ON actor.id = actorid
           JOIN movie ON movieid = movie.id
WHERE movie.title = 'Alien';

# NR 8

SELECT title
FROM movie JOIN casting ON movie.id = movieid
           JOIN actor ON actorid = actor.id
WHERE name = 'Harrison Ford';

# NR 9

SELECT title
FROM movie JOIN casting ON movie.id = movieid
           JOIN actor ON actorid = actor.id
WHERE name = 'Harrison Ford' AND ord <> 1;


# NR 10

SELECT title, name
FROM movie JOIN casting ON movie.id = movieid
           JOIN actor ON actorid = actor.id
WHERE ord = 1 AND yr = 1962;

# NR 11

SELECT yr,COUNT(title) FROM
  movie JOIN casting ON movie.id=movieid
        JOIN actor   ON actorid=actor.id
where name='John Travolta'
GROUP BY yr
HAVING COUNT(title)=(SELECT MAX(c) FROM
(SELECT yr,COUNT(title) AS c FROM
   movie JOIN casting ON movie.id=movieid
         JOIN actor   ON actorid=actor.id
 where name='John Travolta'
 GROUP BY yr) AS t
);

# NR 12

SELECT title, name 
FROM movie JOIN casting ON movie.id = movieid
           JOIN actor ON actorid = actor.id
WHERE ord = 1 AND movieid IN 
  (SELECT movieid 
   FROM casting, actor 
   WHERE actorid=actor.id AND name='Julie Andrews');

# NR 13

SELECT name 
FROM actor JOIN casting ON actorid = id 
WHERE ORD = 1 
GROUP BY name 
HAVING COUNT(*) >= 30

# NR 14

SELECT title, COUNT(actorid) 
FROM movie JOIN casting ON id = movieid
WHERE yr = 1978 
GROUP BY title 
ORDER BY COUNT(actorid) DESC, title

# NR 15

SELECT name 
FROM actor JOIN casting ON (id = actorid) 
WHERE movieid IN (
  SELECT movieid 
  FROM casting JOIN actor ON (actorid = id) 
  WHERE name = 'ART Garfunkel'
  )
  AND name <> 'Art Garfunkel';
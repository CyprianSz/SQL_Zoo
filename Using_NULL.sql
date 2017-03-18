# NR 1

SELECT name
FROM teacher
WHERE dept IS NULL;

# NR 2

SELECT teacher.name, dept.name
 FROM teacher INNER JOIN dept
           ON (teacher.dept=dept.id);

# NR 3

SELECT teacher.name, dept.name
 FROM teacher LEFT OUTER JOIN dept ON teacher.dept = dept.id;

# NR 4

SELECT teacher.name, dept.name
 FROM teacher RIGHT OUTER JOIN dept ON teacher.dept = dept.id;

# NR 5

SELECT name, COALESCE(mobile, '07986 444 2266')
FROM teacher;

# NR 6 

SELECT teacher.name, COALESCE(dept.name,'None')
FROM teacher LEFT JOIN dept ON teacher.dept = dept.id;

# NR 7 

SELECT COUNT(name), COUNT(mobile)
FROM teacher;

# NR 8

SELECT dept.name, COUNT(teacher.name)
FROM teacher RIGHT JOIN dept ON teacher.dept = dept.id
GROUP BY dept.name;

# NR 9

SELECT name, CASE WHEN dept IN (1,2) THEN 'Sci' 
                  ELSE 'Art' END 
FROM teacher;

# NR 10

SELECT name, CASE WHEN dept IN (1,2) THEN 'Sci'  
                  WHEN dept = 3 THEN 'Art' 
                  ELSE 'None' END 
FROM teacher;
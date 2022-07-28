-- Exercicio 1

SELECT COUNT("endDate") AS "currentExperiences" 
from experiences;

-- Exercicio 2

SELECT "userId" AS id, count(id) AS educations 
FROM educations 
GROUP BY "userId";

-- Exercicio 3

SELECT users.name AS writer, COUNT(testimonials.id) AS testimonailCount
FROM testimonials
JOIN users
ON testimonials."writerId" = users.id
WHERE users.id = 435
GROUP BY users.name;

-- Exercicio 4

SELECT MAX(jobs.salary) AS maximumSalary, roles.name AS role
FROM jobs
JOIN roles
ON jobs."roleId" = roles.id
WHERE jobs.active IS TRUE
GROUP BY roles.name;
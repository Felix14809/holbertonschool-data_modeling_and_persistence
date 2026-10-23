SELECT c.title, i.name
FROM courses c
INNER JOIN instructors i ON i.id = c.instructor_id
ORDER BY c.title;
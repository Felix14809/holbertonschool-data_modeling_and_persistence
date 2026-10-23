SELECT i.name, c.title
FROM instructors i
LEFT JOIN courses c ON i.id = c.instructor_id
ORDER BY i.name;
SELECT i.name
FROM instructors i
INNER JOIN courses c ON c.instructor_id = i.id
INNER JOIN registrations r ON c.id = r.course_id
GROUP BY i.id
ORDER BY i.name;
SELECT s.name, c.title
FROM students s
INNER JOIN enrollments e ON e.student_id = s.id
INNER JOIN courses c ON c.id = e.course_id
ORDER BY s.name, c.title;
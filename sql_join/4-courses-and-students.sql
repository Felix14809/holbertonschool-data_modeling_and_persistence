SELECT c.title, s.name 
FROM courses c
LEFT JOIN enrollments e ON e.course_id = c.id
LEFT JOIN students s ON s.id = e.student_id
ORDER BY c.title, s.name;
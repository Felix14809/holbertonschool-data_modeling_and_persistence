SELECT c.title, COUNT(e.student_id)
FROM courses c
LEFT JOIN enrollments e ON e.course_id = c.id
GROUP BY c.id
ORDER BY c.title;
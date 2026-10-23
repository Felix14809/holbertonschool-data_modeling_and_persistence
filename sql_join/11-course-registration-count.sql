SELECT c.title, COUNT(r.student_id)
FROM courses c
LEFT JOIN registrations r ON r.course_id = c.id
GROUP BY c.id
ORDER BY COUNT(r.student_id) DESC, c.title;
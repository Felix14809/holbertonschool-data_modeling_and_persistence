SELECT s.name
FROM students s
WHERE s.id IN (SELECT student_id FROM registrations)
ORDER BY s.name;
SELECT c.title
FROM courses c
LEFT JOIN enrollments e ON e.course_id = c.id
GROUP BY c.id
HAVING COUNT(e.student_id) > (
    SELECT AVG(total)
    FROM (
        SELECT COUNT(e.student_id) AS total
        FROM courses c
        LEFT JOIN enrollments e ON e.course_id = c.id
        GROUP BY c.id
    )
)
ORDER BY c.title;
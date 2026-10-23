SELECT c.title
FROM courses c
LEFT JOIN enrollments e ON e.course_id = c.id
GROUP BY c.id
HAVING COUNT(*) > (
    SELECT AVG(total)
    FROM (
        SELECT COUNT(*) AS total
        FROM enrollments
        GROUP BY c.id
    )
)
ORDER BY c.title;
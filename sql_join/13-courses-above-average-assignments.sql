SELECT c.title
FROM courses c
LEFT JOIN assignments a ON a.course_id = c.id
GROUP BY c.id
HAVING COUNT(a.course_id) > (
    SELECT AVG(total)
    FROM (
        SELECT COUNT(a.course_id) AS total
        FROM courses c
        LEFT JOIN assignments a ON a.course_id = c.id
        GROUP BY c.id
    )
)
ORDER BY c.title;
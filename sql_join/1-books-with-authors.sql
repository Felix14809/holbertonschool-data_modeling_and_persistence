SELECT b.title, a.name
FROM books b
INNER JOIN authors a ON b.author_id = a.id
ORDER BY b.title;
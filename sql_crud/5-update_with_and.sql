UPDATE books
SET price = ROUND(price * 1.1, 2)
WHERE genre = 'Tech' AND stock > 5;
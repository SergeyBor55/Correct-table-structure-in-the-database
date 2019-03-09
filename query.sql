Напишите sql запрос, который вернёт название книги, имя автора, издательство, год издания, количество взятых экземпляров в библиотеке,
где определённый вами автор и количество взятых книг меньше определённого вами значения.

SELECT books.title, authors.name AS authors, publishings.title AS publishings, books.publication_year, 
COUNT(books_issued.book_id) AS take_from_library FROM books
INNER JOIN authors ON books.authors_id = authors.id 
INNER JOIN publishings ON books.publishing_company_id = publishings.id 
INNER JOIN books_issued ON books.id = books_issued.book_id 
WHERE authors.name LIKE ('Михаил Булгаков')
GROUP BY books_issued.book_id
HAVING take_from_library < 2


Напишите sql запрос, который вернёт id студентов и количество взятых ими книг по определённым вами id студентов.

SELECT student_id, COUNT(*) as count_books, date_of_issue FROM books_issued GROUP BY student_id HAVING student_id IN(2,4)
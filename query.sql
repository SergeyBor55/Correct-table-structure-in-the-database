
SELECT books.title, authors.name AS authors, publishings.title AS publishings, books.publication_year, COUNT(books_issued.book_id) AS take_from_library FROM books
INNER JOIN authors ON books.authors_id = authors.id 
INNER JOIN publishings ON books.publishing_company_id = publishings.id 
INNER JOIN books_issued ON books.id = books_issued.book_id 
GROUP BY books_issued.book_id
HAVING take_from_library = 1

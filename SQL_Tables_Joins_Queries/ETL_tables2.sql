Create table book_bestsellers_wiki (
book text primary key,
author text,
first_published text,
sales text)

Create table author_books_wiki(
author text primary key,
number_books text,
nationality text,
min_sales text,
max_sales text
)

Create table book_bestsellers_amazon(
book text primary key,
author text,
rating float,
reviews float,
price_usd float,
year int
)

select * from book_bestsellers_wiki

select author_books_wiki.author, author_books_wiki.nationality,author_books_wiki.number_books, book_bestsellers_wiki.book, book_bestsellers_wiki.sales    
from author_books_wiki
inner join book_bestsellers_wiki
on author_books_wiki.author=book_bestsellers_wiki.author 
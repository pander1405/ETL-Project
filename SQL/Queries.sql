select title, first_name, last_name, source_name, type, rating
from book b
join author a on b.author_fk = a.author_id
join review r on b.book_id = r.book_fk
join source s on r.source_fk = source_id

select first_name, last_name, count(review_id) as "Review_Total"
from author a
join book b on b.author_fk = a.author_id
join review r on b.book_id = r.book_fk
group by last_name, first_name
order by "Review_Total" desc
create table author(
author_id int primary key,
first_name varchar(30),
last_name varchar(30));

create table book(
book_id int primary key,
title varchar(250),
author_fk int,
foreign key (author_fk) references author(author_id));

create table source(
source_id int primary key,
source_name varchar(250),
type varchar(30));

create table review(
review_id int primary key,
book_fk int,
source_fk int,
rating float,
foreign key (source_fk) references source(source_id),
foreign key (book_fk) references book(book_id));
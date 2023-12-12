create database database1  /* create database named "database1" */
create table author (id int, name varchar(50), birth_year int, death_year int)   /* create "author" table*/
create table book (id int, author_id int, title varchar(50), publish_year int, publishing_house varchar(50), rating float)  /* create "book" table */
create table adaptation (book_id int, type varchar(50), title varchar(50), release_year int, rating float)  /*create "adaptation" table */
create table book_review (book_id int, review varchar(200), author varchar(50))  /*create "book_review" table */

insert into author (id, name, birth_year, death_year) values (1, 'Marcella Cole', 1983, NULL)  /* create row 1 for "author" table */
insert into author (id, name, birth_year, death_year) values (2, 'Lisa Mullins', 1891, 1950)  /* create row 2 for "author" table */
insert into author (id, name, birth_year, death_year) values (3, 'Dennis Stokes', 1935, 1994)  /* create row 3 for "author" table */
insert into author (id, name, birth_year, death_year) values (4, 'Randolph Vasquez', 1957, 2004)  /* create row 4 for "author" table */
insert into author (id, name, birth_year, death_year) values (5, 'Daniel Branson', 1965, 1990)  /* create row 5 for "author" table */

insert into book (id, author_id, title, publish_year, publishing_house, rating) values (1, NULL, 'Soulless girl', 2008, 'Golden Albatros', 4.3)  /* create row 1 for "book" table */
insert into book (id, author_id, title, publish_year, publishing_house, rating) values (2, NULL, 'Weak Heart', 1980, 'Diarmud Inc.', 3.8)  /* create row 2 for "book" table */
insert into book (id, author_id, title, publish_year, publishing_house, rating) values (3, 4, 'Faith Of Light', 1995, 'White Cloud Press', 4.3)  /* create row 3 for "book" table */
insert into book (id, author_id, title, publish_year, publishing_house, rating) values (4, NULL, 'Memory Of Hope', 2000, 'Rutis Enterprises', 2.7)  /* create row 4 for "book" table */
insert into book (id, author_id, title, publish_year, publishing_house, rating) values (5, 6, 'Warrior Of Wind', 2005, 'Maverick', 4.6)  /* create row 5 for "book" table */

insert into adaptation (book_id, type, title, release_year, rating) values (1, 'movie', 'Gone With The Wolves: The Beginning', 2008, 3)  /* create row 1 for "adaptation" table */
insert into adaptation (book_id, type, title, release_year, rating) values (2, 'movie', 'Blacksmith With Silver', 2014, 4.3)  /* create row 2 for "adaptation" table */
insert into adaptation (book_id, type, title, release_year, rating) values (3, 'movie', 'Companion Of Tomorrow', 2001, 4.2)  /* create row 3 for "adaptation" table */
insert into adaptation (book_id, type, title, release_year, rating) values (4, 'movie', 'Patrons and Bearers', 2004, 3.2)  /* create row 4 for "adaptation" table */
insert into adaptation (book_id, type, title, release_year, rating) values (5, 'movie', 'Homeless Warrior', 2008, 4)  /* create row 5 for "adaptation" table */

insert into book_review (book_id, review, author) values (1, 'An incredible book.', 'Silvia Jones')  /* create row 1 for "book_review" table */
insert into book_review (book_id, review, author) values (1, 'Great, although has some flaws', 'Jessica Parker')  /* create row 2 for "book_review" table */
insert into book_review (book_id, review, author) values (2, 'Dennis Stokes takes the reader for a ride full of emotions', 'Thomas Green')  /* create row 3 for "book_review" table */
insert into book_review (book_id, review, author) values (3, 'Incredible craftmanship of the author', 'Martin Freeman')  /* create row 4 for "book_review" table */ 
insert into book_review (book_id, review, author) values (4, 'Not the best book by this author', 'Jude Faith')  /* create row 5 for "book_review" table */
insert into book_review (book_id, review, author) values (5, 'Claudia Johnson at her best!', 'Joe Marqiz')  /* create row 6 for "book_review" table */
insert into book_review (book_id, review, author) values (6, 'I cannot recall more captivating plot', 'Alexander Durham')  /* create row 7 for "book_review" table */

select * from author
select * from book
select * from adaptation
select * from book_review

/* Exercise 1: List all the books and their author's name */
select name as AuthorName, title as BookName, publish_year as YearOfPublish from author join book on author.id = book.id 

/* Exercise 2:  List authors and books that published after 2005    */
select name as Authors, title as Books, publish_year as PublishYear from author join book on author.id = book.id where publish_year > 2005

/* Exercise 3: List all the books and their adaptations */
select book.title as Books, adaptation.title as Adaptation, adaptation.release_year as Years from book join adaptation on book.id = adaptation.book_id

/* Show all the books with their movie adaptation */
select book.title as Book, adaptation.title as Adaptation, publishing_house as Publisher, adaptation.type as Type from book join adaptation on book.id = adaptation.book_id

/* Show  all the books with their review */
select book.title as Book, review as Book_Review from book join book_review on book.id = book_review.book_id

/* List all the books and their authors */
select book.title as Book, name as Author from author join book on author.id = book.id
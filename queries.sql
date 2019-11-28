/*query 1*/
select mov_title, mov_year
from movie;

/*query 2*/
select mov_year
from movie
where mov_title = 'AMERICAN BEAUTY';

/*query 3*/
select mov_title
from movie
where mov_year = '1999';

/*query 4*/
select mov_title
from movie
where mov_year < 1998;

/*query 5*/
select mov_title
from movie
where mov_year = '1999';

/*query 6*/
select mov_title,rev_name
from movie join rating
on movie.mov_id = rating.mov_id
join reviewer on reviewer.rev_id = rating.rev_id;

/*query 7*/
select rev_name,num_o_ratings
from reviewer join rating
on reviewer.rev_id = rating.rev_id
where num_o_ratings >= 7;

/*query 8*/
select mov_title
from movie join rating
on movie.mov_id = rating.mov_id
where num_o_ratings is null;

/*query 9*/
select rev_name
from reviewer join rating
on reviewer.rev_id = rating.rev_id
where num_o_ratings is null;

/*query 10*/
select dir_fname,dir_lname,mov_title
from director join movie_direction
on director.dir_id = movie_direction.dir_id
join movie on movie.mov_id = movie_direction.dir_id
where mov_title = "EYES WIDE SHUT";



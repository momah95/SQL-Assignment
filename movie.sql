create Table movie(
mov_id	Integer	not null,
mov_title	char(50)	null,
mov_year	integer		null,
mov_time	integer		null,
mov_lang	char(50)	null,
mov_dt_rel  date		null,
mov_rel_country	char(5)	null,
constraint movie_PK		PRIMARY KEY(mov_id)
);

create table director(
dir_id	integer	not null,
dir_fname	char(20)	null,
dir_lname	char(20)	null,
constraint director_PK PRIMARY KEY(dir_id)
);

create table actor(
act_id	integer	 not null,
act_fname	char(20)  null,
act_lname	char(20)	null,
act_gender	char(1)		null,
constraint actor_PK PRIMARY KEY(act_id)
);

 create Table genres(
 gen_id		integer		not null,
 gen_title	char(20)	null,
 constraint	genres__PK	PRIMARY KEY(gen_id)
 );

create Table reviewer(
rev_id	integer	     not null,
rev_name	char(30)	null,
constraint reviewer_PK PRIMARY KEY(rev_id)
);

create Table movie_genres(
gen_id	integer	not null,
mov_id	integer	not null,
constraint primary key (gen_id,mov_id),
FOREIGN KEY (gen_id) References genres(gen_id),
FOREIGN KEY(mov_id) References movie(mov_id)
);


 
create table rating(
mov_id	integer	not null,
rev_id	integer	not null,
rev_stars	integer	null,
num_o_ratings	integer null,
constraint primary key (rev_id,mov_id),
FOREIGN KEY(mov_id) References movie(mov_id),
FOREIGN KEY(rev_id) References reviewer(rev_id)
);


create table movie_cast(
act_id	integer	not null,
mov_id	integer	not null,
m_role	char(30)	not null,
constraint primary key (act_id,mov_id),
FOREIGN KEY(act_id) References actor(act_id),
FOREIGN KEY(mov_id) References movie(mov_id)
);

create table movie_direction(
dir_id	integer		not null,
mov_id	integer		not null,
constraint primary key (dir_id,mov_id),
FOREIGN KEY (dir_id) References director(dir_id), 
FOREIGN KEY(mov_id) References movie(mov_id)
);

 /* INSERTIONS BELOW! */
 
 insert into movie_cast values(
'1','4','pilot'
);
insert into movie_cast values(
'3','2','finale'
);
insert into movie_cast values(
'2','5','destruction'
);
insert into movie_cast values(
'4','1','construct'
);
insert into movie_cast values(
'5','3','debut'
);

insert into movie_direction values(
'1','5'
);
insert into movie_direction values(
'2','3'
);
insert into movie_direction values(
'3','4'
);
insert into movie_direction values(
'5','2'
);
insert into movie_direction values(
'4','1'
);

insert into movie_genres values(
'1','1'
);
insert into movie_genres values(
'3','5'
);
insert into movie_genres values(
'2','4'
);
insert into movie_genres values(
'4','2'
);
insert into movie_genres values(
'5','3'
);

insert into rating values(
'1','1','4',null
);
insert into rating values(
'2','3','5','7'
);
insert into rating values(
'3','2','2','8'
);
insert into rating values(
'5','4','2','5'
);
insert into rating values(
'4','5','5','3'
);



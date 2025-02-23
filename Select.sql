/*Задание 2*/

select name, duration
from tracks
where duration = (select max(duration) from tracks);

select name, duration
from tracks
where duration >= 210;

select title
from collections
where year >= 2018 and year <= 2020;

select name
from artists
where name not like '% %';

select name
from tracks
where name like '%my%';


/*Задание 3*/

select title, count(artistid) from genres g join genresandartists g2 on g.genreid = g2.genreid
group by g.title; 


select a.name, a.year, count(trackid) from albums a join tracks t on a.albumid = t.albumid 
where a.year >= 2019 and a.year <= 2020
group  by a.name, a.year;

select a.name, avg(t.duration) from albums a join tracks t on a.albumid = t.albumid 
group by a.name;

select a.name from artists a join artistsandalbums a2 on a.artistid = a2.artistid join albums a3 on a2.albumid = a3.albumid 
where a3.year != 2020;

select c.title from collections c join collectionsandtracks c2 on c.collectionid = c2.collectionid join tracks t on c2.trackid = t.trackid join albums a on t.albumid = a.albumid join artistsandalbums a2 on a2.albumid = a.albumid join artists a3  on a3.artistid = a2.artistid 
where a3.name = 'Black Eyed Peace';


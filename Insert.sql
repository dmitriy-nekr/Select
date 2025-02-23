insert into artists 
values(1,'Madonna'),
(2, 'Linkin Park'),
(3, 'Frank Sinatra'),
(4,'Black Eyed Peace');

insert into genres 
values(1, 'Rock'),
(2,'Pop'),
(3, 'RnB');

insert into genresandartists 
values (1, 2, 3),
(2, 1, 2),
(3, 2, 3),
(4, 3, 4);

insert into albums 
values (1, 'Golden Boys', 2018),
(2, 'Pretty Woman', 2020),
(3, 'Hello World!', 1960);

insert into artistsandalbums 
values(1, 1, 4),
(2, 2, 2),
(3, 3, 3);

insert into tracks 
values(1, 2, 'Dogs and Cats', 180),
(2, 3, 'Parents', 243),
(3, 2, 'Stand Alone', 215),
(4, 1, 'Goodbye', 130),
(5, 1, 'Never give my hand', 160),
(6, 2, 'News', 500);

insert into collections 
values(1, 'Golden Hits', 2018),
(2, 'Sunset', 2020),
(3, 'Beverlu Hills', 2005),
(4, 'Moonlight', 1975);

insert into collectionsandtracks 
values(1, 1, 3),
(2, 1, 4),
(3, 2, 5),
(4, 3, 6),
(5, 4, 1)
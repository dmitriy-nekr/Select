create table if not exists Genres (
	genreID serial primary key,
	title varchar(50) not null
);

create table if not exists Artists (
	artistID serial primary key,
	name varchar(50) not null
);

create table if not exists Albums(
	albumID serial primary key,
	name varchar(50) not null,
	year integer not null
	);

create table if not exists Tracks(
	trackID serial primary key,
	albumID integer not null references Albums(albumID),
	name varchar(50) not null,
	duration integer not null
);
	
create table if not exists Collections(
	collectionID serial primary key,
	title varchar(50) not null,
	year integer not null
);

create table if not exists GenresAndArtists (
	ID serial primary key,
	genreID integer not null references Genres(genreID),
	artistID integer not null references Artists(artistID)
);

create table if not exists ArtistsAndAlbums (
	ID serial primary key,
	albumID integer not null references Albums(albumID), 
	artistID integer not null references Artists(artistID)
);

create table if not exists CollectionsAndTracks (
	ID serial primary key,
	collectionID integer not null references Collections(collectionID),
	trackID integer not null references Tracks(trackID)
);
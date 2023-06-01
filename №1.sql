create table if not exists style (
	ID SERIAL primary key,
	NAME VARCHAR(30) not NULL
);

create table if not exists musician (
	ID SERIAL primary key,
	NAME VARCHAR(40) NOT null
);

create table if not exists musician_style (
	musician_id INTEGER REFERENCES musician(id),
	style_id INTEGER REFERENCES style(id),
	CONSTRAINT pk_musician_style PRIMARY KEY (musician_id, style_id)
);

create table if not exists album(
	ID SERIAL primary key,
	NAME VARCHAR(60) unique not null,
	year_of_release INTEGER check (year_of_release>1990)
);

create table if not exists album_musician(
	album_id INTEGER REFERENCES album(id),
	musician_id INTEGER REFERENCES musician(id),
	CONSTRAINT pk_album_musician PRIMARY KEY (musician_id, album_id)
);

create table if not exists track (
	ID SERIAL primary key,
	NAME VARCHAR(40) not null,
	album_id INTEGER REFERENCES album(id),
	duration time 
);

CREATE TABLE IF NOT EXISTS Collection (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) unique NOT NULL,
	year_of_release INTEGER check(year_of_release>1990)
);

CREATE TABLE IF NOT EXISTS track_collection (
	track_id INTEGER REFERENCES track(id),
	Collection_id INTEGER REFERENCES Collection(id),
	CONSTRAINT pk_track_collection PRIMARY KEY (track_id, Collection_id)
);







   
   
   


        



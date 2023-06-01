INSERT INTO style(name) values
('pop'),
('rock'),
('blues'),
('rap'),
('house');


INSERT INTO musician(name) values
('Britney Spears'),
('Rammstein'),
('David Guetta'),
('Nightwish'),
('Hozier'),
('Король и Шут'),
('Coolio'),
('Michael Jackson'),
('Eminem');

INSERT INTO musician_style values
(5, 3),
(3, 5),
(8, 1),
(9, 4),
(1, 1),
(6, 2),
(4, 2),
(7, 4),
(2, 2);

INSERT INTO album(name, year_of_release) values
('One More Love', 2009),
('Мёртвый Анархист', 2003),
('Oops!... I Did It Again', 2000),
('Gangsta Paradise', 1995),
('Take Me To Church', 2013),
('Wishmaster', 2000),
('HIStory - Past, Present and Future - Book I', 1995),
('Mutter', 2001),
('The Marshall Mathers', 2000);

INSERT INTO album_musician values
(1, 3),
(2, 6),
(3, 1),
(4, 7),
(5, 5),
(6, 4),
(7, 8),
(8, 2),
(9, 9);

INSERT INTO track(name, album_id, duration) 
	 values ('Wishmaster', 6, '00:04:23'),
       		('Ich Will', 8, '00:03:37'),
			('Gangstas Paradise', 4, '00:04:01'),
			('The Real Slim Shady', 9, '00:04:44'),
			('Take Me To Church', 5, '00:04:03'),
			('Cant Make You Love Me', 3, '00:03:17'),
			('Мёртвый анархист', 2, '00:04:07'),
			('Cherry Wine', 5, '00:04:00'),
			('Earth Song', 7, '00:06:46'),
			('Oops!...I Did It Again', 3, '00:03:30'),
			('Wanderlust', 6, '00:04:50'),
			('Man In The Mirror', 7, '00:05:20'),
			('I Wanna Go Crazy', 1, '00:03:24'),
			('Stan', 9, '00:06:44'),
			('Mein Herz Brennt', 8, '00:04:39'),
			('Некромант', 2, '00:02:43');

INSERT INTO collection(name, year_of_release) values
('Жаль, нет ружья!', 2014),
('Man In The Mirror Tribute', 2011),
('Ich Will[Single][Uk Edition] ', 2002),
('Children of Bodom', 2009),
('I Wanna Go Crazy Vol. 9', 2015),
('Bad 25th Anniversary', 2012),
('Curtain Call - The Hits', 2005),
('RAMMSTEIN', 2019);

INSERT INTO track_collection values
(7, 1),
(9, 2),
(2, 3),
(10, 4),
(12, 6),
(13, 5),
(14, 7),
(15, 8);

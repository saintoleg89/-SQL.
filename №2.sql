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
(1, 1),
(2, 2),
(2, 4),
(2, 6),
(5, 3),
(3, 5),
(4, 7),
(4, 9),
(1, 8);

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
(2, 8),
(3, 1),
(4, 6),
(5, 5),
(6, 2),
(7, 4),
(8, 7),
(9, 9);

INSERT INTO track(name, album_id, duration) values
('Wishmaster', 6, 4-23),
('Ich Will', 8, 3-37),
('Gangstas Paradise', 4, 4-01),
('The Real Slim Shady', 9, 4-44),
('Take Me To Church', 5, 4-03),
('Cant Make You Love Me', 3, 3-17),
('Мёртвый анархист', 2, 4-07),
('Cherry Wine', 5, 4-00),
('Earth Song', 7, 6-46),
('Oops!...I Did It Again', 3, 3-30),
('Wanderlust', 6, 4-50),
('Man In The Mirror', 7, 5-20),
('I Wanna Go Crazy', 1, 3-24),
('Stan', 9, 6-44),
('Mein Herz Brennt', 8, 4-39),
('Некромант', 2, 2-43);

INSERT INTO collection(name, year_of_release) values
('Жаль, нет ружья!', 2014),
('Man In The Mirror Tribute', 2011),
('Ich Will[Single][Uk Edition] ', 2002),
('Children of Bodom', 2009);

INSERT INTO track_collection values
(7, 1),
(9, 2),
(2, 3),
(10, 4);

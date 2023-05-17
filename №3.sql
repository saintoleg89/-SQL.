/*название и год выхода альбомов, вышедших в 2018 году;*/
SELECT name, year_of_release  FROM album
where year_of_release = 2018;

/*название и продолжительность самого длительного трека;*/
SELECT name, duration FROM track
order by duration desc 
limit 1;

/*название треков, продолжительность которых не менее 3,5 минуты;*/
SELECT name  FROM track
where duration >= 3.5*60;

/*названия сборников, вышедших в период с 2018 по 2020 год включительно;*/
SELECT name, year_of_release  FROM collection
where year_of_release BETWEEN 2018 and 2021;

/*исполнители, чье имя состоит из 1 слова;*/
SELECT name  FROM musician
where name not like '% %';

/*название треков, которые содержат слово "мой"/"my".*/
SELECT name FROM track
WHERE LOWER(name) like '%my%' or LOWER(name) like '%мой%';

/*количество исполнителей в каждом жанре;*/
select s.name, count(style_id) from musician_style ms
left join style s on ms.style_id = s.id 
group by s.name;

/*количество треков, вошедших в альбомы 2019-2020 годов;*/
select count(t.id) from track t 
left join album a on t.album_id = a.id 
where a.year_of_release between 2019 and 2020;

/*средняя продолжительность треков по каждому альбому;*/
select a.name, avg(t.duration) from track t 
left join album a on t.album_id = a.id 
group by a.id;

/*все исполнители, которые не выпустили альбомы в 2020 году;*/
select name from musician m2 except
select m.name from album_musician am 
join album a on a.id = am.album_id 
join musician m on m.id = am.musician_id 
where a.year_of_release = 2020;

/*названия сборников, в которых присутствует конкретный исполнитель (выберите сами);*/
select distinct c.name from collection c 
join track_collection tc on tc.collection_id = c.id  
join track t on t.id = tc.track_id
join album a on a.id = t.album_id 
join album_musician am on am.album_id = a.id
join musician m on m.id = am.musician_id
where m.name = ('Rammstein');

/*название альбомов, в которых присутствуют исполнители более 1 жанра;*/
select a.name, count(s.name) from album a 
join album_musician am on am.album_id = a.id 
join musician m on m.id = am.musician_id  
join musician_style ms on ms.musician_id = m.id 
join style s on s.id = ms.style_id 
group by a.name
having count(s.name) > 1;

/*наименование треков, которые не входят в сборники;*/
select t.name from track t 
left join track_collection tc on tc.track_id = t.id 
where tc.collection_id is null;

/*исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько);*/
select t.name from track t 
where t.duration = (select min(duration) from track t);

/*название альбомов, содержащих наименьшее количество треков.*/
select a.name, count(t.id) from album a 
join track t on t.album_id = a.id 
group by a.id 
having count(t.id) = 
	(select count(t.id) from album a
	join track t on t.album_id = a.id
	group by a.id
	order by count(t.id)
	limit 1);





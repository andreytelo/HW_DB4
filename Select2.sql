select genre_name, count(artist_name) from genre as g
left join artistgenre as ag on g.id_genre = ag.idgenre 
left join artist as a on ag.idartist = a.id_artist 
group by genre_name 
order by count(artist_name);



select count(track_name), release_date from album as a
left join tracks as t on t.album_id = a.id_album 
where (a.release_date >= 2019) and (a.release_date <= 2020)
group by release_date
order by count(track_name)


select album_name, avg(track_duration) from album as a
left join tracks as t on t.album_id = a.id_album 
group by album_name 
order by avg(track_duration);



select distinct artist_name from artist as a
where artist_name not in(
	select artist_name from artist as a
	left join artistalbum as aa on a.id_artist = aa.idartist 
	left join album as al on al.id_album = aa.idalbum 
	where al.release_date  = 2020
	)
order by artist_name;



select distinct  collection_name from collection as c
left join trackcollection as tc on c.id_collection = tc.idcollection 
left join tracks as t on t.id_track = tc.idtrack 
left join album as a on a.id_album = t.album_id 
left join artistalbum as aa on aa.idalbum = a.id_album 
left join artist as art on art.id_artist = aa.idartist 
where artist_name like '%Metalica%'
order by collection_name;


select artist_name from album as a
left join artistalbum as aa on aa.idalbum = a.id_album 
left join artist as art on art.id_artist = aa.idartist 
left join artistgenre as ag on ag.idartist = art.id_artist 
left join genre as g on g.id_genre = ag.idgenre 
group by artist_name
having count(distinct genre_name) > 1
order by artist_name;


select track_name from tracks as t
left join trackcollection as tc on tc.idtrack = t.id_track 
where tc.idtrack is null;



select artist_name from tracks as t
left join album as a on a.id_album = t.album_id 
left join artistalbum as aa on aa.idalbum = a.id_album 
left join artist as art on art.id_artist = aa.idartist 
group by artist_name, track_duration 
having track_duration  = (select min(track_duration) from tracks)
order by artist_name;



select album_name from album as a
left join tracks as t on t.album_id =  a.id_album
where t.album_id in (
    select album_id
    from tracks
    group by album_id
    having count(id_track) = (
        select count(id_track)
        from tracks
        group by album_id  
        order by count
        limit 1
    )
)
order by album_name 

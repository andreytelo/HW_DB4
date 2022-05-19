insert into genre 
	values
	(default, 'Rock'),
	(default, 'Punk'),
	(default, 'Pop'),
	(default, 'Rap'),
	(default, 'Metal');

insert into artist
	values
	(default, 'Sum 41'),
	(default, 'Eminem'),
	(default, 'Rammstein'),
	(default, 'Slipknot'),
	(default, 'Metalica'),
	(default, '50 cent'),
	(default, 'Lady Gaga'),
	(default, 'Five Finger Death punch');

insert into  artistgenre 
	values
	(1, 1),
	(2, 1),
	(4, 2),
	(1, 3),
	(5, 4),
	(5, 5),
	(4, 6),
	(3, 7),
	(5, 7),
	(1, 8);

insert into album 
	values
	(default, 'Saint', 2018),
	(default, 'Encore', 2009),
	(default, 'In Da Club', 1990),
	(default, 'Rammstein', 2019),
	(default, 'GAGAGA', 2018),
	(default, 'American Capitalist', 2010),
	(default, 'Does This Look Infected?', 2002),
	(default, 'Hardwired… to Self-Destruc', 2017);

insert into artistalbum 
	values
	(1, 4),
	(2, 2),
	(3, 6),
	(4, 3),
	(5, 7),
	(6, 8),
	(7, 1),
	(8, 5),
	(8, 7);

insert into tracks
	values
	(default, 'Moth into Flame', 280, 8),
	(default, 'Still Waiting', 200, 7),
	(default, 'Wait and Bleed', 190, 1),
	(default, 'In Da Club', 230, 3),
	(default, 'P.I.M.P', 210, 3),
	(default, 'Just Lose it', 170, 2),
	(default, 'Far From Home', 310, 6),
	(default, 'My Romance', 250, 5),
	(default, 'Radio', 200, 4),
	(default, 'Deutschland', 360, 4),
	(default, 'Devil in I', 180, 1),
	(default, 'My Rain Man', 190, 2),
	(default, 'Shallow', 220, 5),
	(default, 'Coming Down', 240, 6),
	(default, 'Hardwired', 180, 8);

insert into collection 
	values
	(default, 'GoldRap', 2011),
	(default, 'All Time Music', 2019),
	(default, 'Rock Legends', 2018),
	(default, 'Punks not dead', 2003),
	(default, 'Gold Rock', 2020),
	(default, 'Best of Pop', 2017),
	(default, 'Peoples choice', 2022),
	(default, 'Metal from the Years', 2021);

insert into trackcollection
	values
	(4, 1),
	(5, 1),
	(6, 1),
	(1, 2),
	(14, 2),
	(7, 3),
	(9, 3),
	(10, 3),
	(2, 4),
	(3, 5),
	(11, 5),
	(15, 5),
	(8, 6),
	(13, 6),
	(2, 7),
	(13, 7),
	(14, 7),
	(1, 8),
	(10, 8),
	(15, 8);
	
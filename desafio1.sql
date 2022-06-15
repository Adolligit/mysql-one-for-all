CREATE DATABASE SpotifyClone;

CREATE TABLE SpotifyClone.Plano(
	id tinyint unsigned auto_increment primary key not null,
	nome char(123) not null,
    valor decimal(6,3) not null
);

CREATE TABLE SpotifyClone.Usuario(
	id tinyint unsigned auto_increment not null primary key,
    nome char(255) unique not null,
    idade tinyint unsigned not null,
	plano_id tinyint unsigned not null,
	dt_assinatura date not null,
    foreign key (plano_id) references Plano(id)
);

CREATE TABLE SpotifyClone.Artista(
	id tinyint unsigned auto_increment not null primary key,
    nome char(255) unique not null
);

CREATE TABLE SpotifyClone.registro_seguidores(
	usuario_id tinyint unsigned not null,
	artista_id tinyint unsigned not null,
    primary key (usuario_id, artista_id),
    foreign key (usuario_id) references Usuario(id),
    foreign key (artista_id) references Artista(id)
);

CREATE TABLE SpotifyClone.Album(
	id tinyint unsigned auto_increment not null primary key,
    nome char(255) unique not null,
	ano_lancamento year not null,
    artista_id tinyint unsigned not null,
    foreign key (artista_id) references Artista(id)
);

CREATE TABLE SpotifyClone.Musica(
	id tinyint unsigned auto_increment not null primary key,
    nome char(123) unique not null,
    duracao_segundos tinyint unsigned not null,
    album_id tinyint unsigned not null,
    foreign key (album_id) references Album(id)
);

CREATE TABLE SpotifyClone.Historico(
	musica_id tinyint unsigned not null,
    usuario_id tinyint unsigned not null,
	dt_reproducao datetime not null,
    primary key (musica_id, usuario_id),
    foreign key (musica_id) references Musica(id),
    foreign key (usuario_id) references Usuario(id)
);

INSERT INTO SpotifyClone.Plano VALUES 
(1, "gratuito", 0.00),
(2, "universitário", 5.99),
(3, "pessoal", 6.99),
(4, "familiar", 7.99);

INSERT INTO SpotifyClone.Usuario VALUES 
(null, "Thati", 23, 1, "2019-10-20"),
(null, "Cintia", 35, 4, "2017-12-30"),
(null, "Bill", 20, 2, "2019-06-05"),
(null, "Roger", 45, 3, "2020-05-13"),
(null, "Norman", 58, 3, "2017-02-17"),
(null, "Patrick", 33, 4, "2017-01-06"),
(null, "Vivian", 26, 2, "2018-01-05"),
(null, "Carol", 19, 2, "2018-02-14"),
(null, "Angelina", 42, 4, "2018-04-29"),
(null, "Paul", 46, 4, "2017-01-17");

INSERT INTO SpotifyClone.Artista VALUES 
(null, "Walter Phoenix"),
(null, "Peter Strong"),
(null, "Lance Day"),
(null, "Freedie Shannon"), 
(null, "Tyler Isle"),
(null, "Fog");

INSERT INTO SpotifyClone.registro_seguidores VALUES 
(1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4),
(5, 5),
(5, 6),
(6, 6),
(6, 3),
(6, 1),
(7, 2),
(7, 5),
(8, 1),
(8, 5),
(9, 6),
(9, 4),
(9, 3),
(10, 2),
(10, 6);

INSERT INTO SpotifyClone.Album VALUES 
(null, "Envious", 1990, 1),
(null, "Exuberant", 1993, 1),
(null, "Hallowed Steam", 1995, 2),
(null, "Incandescent", 1998, 3),
(null, "Temporary Culture", 2001, 4),
(null, "Library of liberty", 2003, 4),
(null, "Chained Down", 2007, 5),
(null, "Cabinet of fools", 2012, 5),
(null, "No guarantees", 2015, 5),
(null, "Apparatus", 2015, 6);


-- id, nome, duracao_segundos e album_id
INSERT INTO SpotifyClone.Musica VALUES 
(null, "Soul For Us", 200, 1),
(null, "Reflections Of Magic", 163, 1),
(null, "Dance With Her Own", 116, 1),
(null, "Troubles Of My Inner Fire", 203, 2),
(null, "Time Fireworks", 152, 2),
(null, "Magic Circus", 105, 3),
(null, "Honey, So Do I", 207, 3),
(null, "Sweetie, Let's Go Wild", 139, 3),
(null, "She Knows", 244, 3),
(null, "Fantasy For Me", 100, 4),
(null, "Celebration Of More", 146, 4),
(null, "Rock His Everything", 223, 4),
(null, "Home Forever", 231, 4),
(null, "Diamond Power", 241, 4),
(null, "Let's Be Silly", 132, 4),
(null, "Thang Of Thunder", 240, 5),
(null, "Words Of Her Life", 185, 5),
(null, "Without My Streets", 176, 5),
(null, "Need Of The Evening", 190, 6),
(null, "History Of My Roses", 222, 6),
(null, "Without My Love", 111, 6),
(null, "Walking And Game", 123, 6),
(null, "Young And Father", 197, 6),
(null, "Finding My Traditions", 179, 7),
(null, "Walking And Man", 229, 7),
(null, "Hard And Time", 135, 7),
(null, "Honey, I'm A Lone Wolf", 150, 7),
(null, "She Thinks I Won't Stay Tonight", 166, 8),
(null, "He Heard You're Bad For Me", 154, 8),
(null, "He Hopes We Can't Stay", 210, 8),
(null, "I Know I Know", 117, 8),
(null, "He's Walking Away", 159, 9),
(null, "He's Trouble", 138, 9),
(null, "I Header I Want To Bo Alone", 120, 9),
(null, "I Ride Alone", 151, 9),
(null, "Honey", 79, 10),
(null, "You Cheated On Me", 95, 10),
(null, "Wouldn't It Be Nice", 213, 10),
(null, "Baby", 136, 10),
(null, "You Make Me Feel So", 83, 10);

INSERT INTO SpotifyClone.Historico VALUES 
(36, 1, "2020-02-28 10:45:55"),
(25, 1, "2020-05-02 05:30:35"),
(23, 1, "2020-03-06 11:22:33"),
(14, 1, "2020-08-05 08:05:17"),
(15, 1, "2020-09-14 16:32:22"),
(34, 2, "2020-01-02 07:40:33"),
(24, 2, "2020-05-16 06:16:22"),
(21, 2, "2020-10-09 12:27:48"),
(39, 2, "2020-09-21 13:14:46"),
(6, 3, "2020-11-13 16:55:13"),
(3, 3, "2020-12-05 18:38:30"),
(26, 3, "2020-07-30 10:00:00"),
(2, 4, "2021-08-15 17:10:10"),
(35, 4, "2021-07-10 15:20:30"),
(27, 4, "2021-01-09 01:44:33"),
(7, 5, "2020-07-03 19:33:28"),
(12, 5, "2017-02-24 21:14:22"),
(14, 5, "2020-08-06 15:23:43"),
(1, 5, "2020-11-10 13:52:27"),
(38, 6, "2019-02-07 20:33:48"),
(29, 6, "2017-01-24 00:31:17"),
(30, 6, "2017-10-12 12:35:20"),
(22, 6, "2018-05-29 14:56:41"),
(5, 7, "2018-05-09 22:30:49"),
(4, 7, "2020-07-27 12:52:58"),
(11, 7, "2018-01-16 18:40:43"),
(39, 8, "2018-03-21 16:56:40"),
(40, 8, "2020-10-18 13:38:05"),
(32, 8, "2019-05-25 08:14:03"),
(33, 8, "2021-08-15 21:37:09"),
(16, 9, "2021-05-24 17:23:45"),
(17, 9, "2018-12-07 22:48:52"),
(8, 9, "2021-03-14 06:14:26"),
(9, 9, "2020-04-01 03:36:00"),
(20, 10, "2017-02-06 08:21:34"),
(21, 10, "2017-12-04 05:33:43"),
(12, 10, "2017-07-27 05:24:49"),
(13, 10, "2017-12-25 01:03:57");
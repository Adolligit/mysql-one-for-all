CREATE DATABASE SpotifyClone;

CREATE TABLE SpotifyClone.Plano(
	id tinyint unsigned auto_increment primary key not null,
	nome char(123) not null,
    valor float not null
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
	ano_lancamento char(5) not null,
    artista_id tinyint unsigned not null,
    foreign key (artista_id) references Artista(id)
);

CREATE TABLE SpotifyClone.Musica(
	id tinyint unsigned auto_increment not null primary key,
    nome char(123) unique not null,
    duracao_segundos char(12) not null,
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

--               INSERINDO VALORES

/* PLANO */
INSERT INTO SpotifyClone.Plano VALUES (1, 'gratuito', 0);
INSERT INTO SpotifyClone.Plano VALUES (2, 'universitário', 5.99);
INSERT INTO SpotifyClone.Plano VALUES (3, 'pessoal', 6.99);
INSERT INTO SpotifyClone.Plano VALUES (4, 'familiar', 7.99);

/* USUÁRIO */
INSERT INTO SpotifyClone.Usuario VALUES (null, 'Thati', 23, 1, '2019-10-20');
INSERT INTO SpotifyClone.Usuario VALUES (null, 'Cintia', 35, 4, '2017-12-30');
INSERT INTO SpotifyClone.Usuario VALUES (null, 'Bill', 20, 2, '2019-06-05');
INSERT INTO SpotifyClone.Usuario VALUES (null, 'Roger', 45, 3, '2020-05-13');
INSERT INTO SpotifyClone.Usuario VALUES (null, 'Norman', 58, 3, '2017-02-17');
INSERT INTO SpotifyClone.Usuario VALUES (null, 'Patrick', 33, 4, '2017-01-06');
INSERT INTO SpotifyClone.Usuario VALUES (null, 'Vivian', 26, 2, '2018-01-05');
INSERT INTO SpotifyClone.Usuario VALUES (null, 'Carol', 19, 2, '2018-02-14');
INSERT INTO SpotifyClone.Usuario VALUES (null, 'Angelina', 42, 4, '2018-04-29');
INSERT INTO SpotifyClone.Usuario VALUES (null, 'Paul', 46, 4, '2017-01-17');

/* ARTÍSTA */
INSERT INTO SpotifyClone.Artista VALUES (null, 'Walter Phoenix'); 
INSERT INTO SpotifyClone.Artista VALUES (null, 'Peter Strong');
INSERT INTO SpotifyClone.Artista VALUES (null, 'Lance Day');
INSERT INTO SpotifyClone.Artista VALUES (null, 'Freedie Shannon') ;
INSERT INTO SpotifyClone.Artista VALUES (null, 'Tyler Isle');
INSERT INTO SpotifyClone.Artista VALUES (null, 'Fog');

/* REGISTRO DE SEGUIDORES */
INSERT INTO SpotifyClone.registro_seguidores VALUES (1, 1);
INSERT INTO SpotifyClone.registro_seguidores VALUES (1, 4);
INSERT INTO SpotifyClone.registro_seguidores VALUES (1, 3);
INSERT INTO SpotifyClone.registro_seguidores VALUES (2, 1);
INSERT INTO SpotifyClone.registro_seguidores VALUES (2, 3);
INSERT INTO SpotifyClone.registro_seguidores VALUES (3, 2);
INSERT INTO SpotifyClone.registro_seguidores VALUES (3, 1);
INSERT INTO SpotifyClone.registro_seguidores VALUES (4, 4);
INSERT INTO SpotifyClone.registro_seguidores VALUES (5, 5);
INSERT INTO SpotifyClone.registro_seguidores VALUES (5, 6);
INSERT INTO SpotifyClone.registro_seguidores VALUES (6, 6);
INSERT INTO SpotifyClone.registro_seguidores VALUES (6, 3);
INSERT INTO SpotifyClone.registro_seguidores VALUES (6, 1);
INSERT INTO SpotifyClone.registro_seguidores VALUES (7, 2);
INSERT INTO SpotifyClone.registro_seguidores VALUES (7, 5);
INSERT INTO SpotifyClone.registro_seguidores VALUES (8, 1);
INSERT INTO SpotifyClone.registro_seguidores VALUES (8, 5);
INSERT INTO SpotifyClone.registro_seguidores VALUES (9, 6);
INSERT INTO SpotifyClone.registro_seguidores VALUES (9, 4);
INSERT INTO SpotifyClone.registro_seguidores VALUES (9, 3);
INSERT INTO SpotifyClone.registro_seguidores VALUES (10, 2);
INSERT INTO SpotifyClone.registro_seguidores VALUES (10, 6);

/* ALBÚM */
INSERT INTO SpotifyCLone.Album VALUES (null, 'Envious', '1990', 1);
INSERT INTO SpotifyCLone.Album VALUES (null, 'Exuberant', '1993', 1);
INSERT INTO SpotifyCLone.Album VALUES (null, 'Hallowed Steam', '1995', 2);
INSERT INTO SpotifyCLone.Album VALUES (null, 'Incandescent', '1998', 3);
INSERT INTO SpotifyCLone.Album VALUES (null, 'Temporary Culture', '2001', 4);
INSERT INTO SpotifyCLone.Album VALUES (null, 'Library of liberty', '2003', 4);
INSERT INTO SpotifyCLone.Album VALUES (null, 'Chained Down', '2007', 5);
INSERT INTO SpotifyCLone.Album VALUES (null, 'Cabinet of fools', '2012', 5);
INSERT INTO SpotifyCLone.Album VALUES (null, 'No guarantees', '2015', 5);
INSERT INTO SpotifyCLone.Album VALUES (null, 'Apparatus', '2015', 6);

/* MÚSICA */
INSERT INTO SpotifyClone.Musica VALUES (null, 'Soul For Us', 200, 1);
INSERT INTO SpotifyClone.Musica VALUES (null, 'Reflections Of Magic', 163, 1);
INSERT INTO SpotifyClone.Musica VALUES (null, 'Dance With Her Own', 116, 1);
INSERT INTO SpotifyClone.Musica VALUES (null, 'Troubles Of My Inner Fire', 203, 1);
INSERT INTO SpotifyClone.Musica VALUES (null, 'Time Fireworks', 152, 1);
INSERT INTO SpotifyClone.Musica VALUES (null, 'Magic Circus', 152, 2);
INSERT INTO SpotifyClone.Musica VALUES (null, 'Honey, So Do I', 207, 2);
INSERT INTO SpotifyClone.Musica VALUES (null, 'Sweetie, Let\'s Go Wild', 139, 2);
INSERT INTO SpotifyClone.Musica VALUES (null, 'She Knows', 244, 2);
INSERT INTO SpotifyClone.Musica VALUES (null, 'Fantasy For Me', 100, 3);
INSERT INTO SpotifyClone.Musica VALUES (null, 'Celebration Of More', 146, 3);
INSERT INTO SpotifyClone.Musica VALUES (null, 'Rock His Everything', 223, 3);
INSERT INTO SpotifyClone.Musica VALUES (null, 'Home Forever', 231, 3);
INSERT INTO SpotifyClone.Musica VALUES (null, 'Diamond Power', 241, 3);
INSERT INTO SpotifyClone.Musica VALUES (null, 'Let\'s Be Silly', 132, 3);
INSERT INTO SpotifyClone.Musica VALUES (null, 'Thang Of Thunder', 240, 4);
INSERT INTO SpotifyClone.Musica VALUES (null, 'Words Of Her Life', 185, 4);
INSERT INTO SpotifyClone.Musica VALUES (null, 'Without My Streets', 176, 4);
INSERT INTO SpotifyClone.Musica VALUES (null, 'Need Of The Evening', 190, 4);
INSERT INTO SpotifyClone.Musica VALUES (null, 'History Of My Roses', 222, 4);
INSERT INTO SpotifyClone.Musica VALUES (null, 'Without My Love', 111, 4);
INSERT INTO SpotifyClone.Musica VALUES (null, 'Walking And Game', 123, 4);
INSERT INTO SpotifyClone.Musica VALUES (null, 'Young And Father', 197, 4);
INSERT INTO SpotifyClone.Musica VALUES (null, 'Finding My Traditions', 179, 5);
INSERT INTO SpotifyClone.Musica VALUES (null, 'Walking And Man', 229, 5);
INSERT INTO SpotifyClone.Musica VALUES (null, 'Hard And Time', 135, 5);
INSERT INTO SpotifyClone.Musica VALUES (null, 'Honey, I\'m A Lone Wolf', 150, 5);
INSERT INTO SpotifyClone.Musica VALUES (null, 'She Thinks I Won\'t Stay Tonight', 166, 5);
INSERT INTO SpotifyClone.Musica VALUES (null, 'He Heard You\'re Bad For Me', 154, 5);
INSERT INTO SpotifyClone.Musica VALUES (null, 'He Hopes We Can\'t Stay', 210, 5);
INSERT INTO SpotifyClone.Musica VALUES (null, 'I Know I Know', 117, 5);
INSERT INTO SpotifyClone.Musica VALUES (null, 'He\'s Walking Away', 1, 5);
INSERT INTO SpotifyClone.Musica VALUES (null, 'He\'s Trouble', 176, 5);
INSERT INTO SpotifyClone.Musica VALUES (null, 'I Header I Want To Bo Alone', 176, 5);
INSERT INTO SpotifyClone.Musica VALUES (null, 'I Ride Alone', 176, 5);
INSERT INTO SpotifyClone.Musica VALUES (null, 'Honey', 79, 6);
INSERT INTO SpotifyClone.Musica VALUES (null, 'You Cheated On Me', 95, 6);
INSERT INTO SpotifyClone.Musica VALUES (null, 'Wouldn\'t It Be Nice', 213, 6);
INSERT INTO SpotifyClone.Musica VALUES (null, 'Baby', 136, 6);
INSERT INTO SpotifyClone.Musica VALUES (null, 'You Make Me Feel So', 83, 6);

/* HISTÓRICO */
INSERT INTO SpotifyClone.Historico VALUES (36, 1, '2020-02-28 10:45:55');
INSERT INTO SpotifyClone.Historico VALUES (25, 1, '2020-05-02 05:30:35');
INSERT INTO SpotifyClone.Historico VALUES (23, 1, '2020-03-06 11:22:33');
INSERT INTO SpotifyClone.Historico VALUES (14, 1, '2020-08-05 08:05:17');
INSERT INTO SpotifyClone.Historico VALUES (15, 1, '2020-09-14 16:32:22');
INSERT INTO SpotifyClone.Historico VALUES (34, 2, '2020-01-02 07:40:33');
INSERT INTO SpotifyClone.Historico VALUES (24, 2, '2020-05-16 06:16:22');
INSERT INTO SpotifyClone.Historico VALUES (21, 2, '2020-10-09 12:27:48');
INSERT INTO SpotifyClone.Historico VALUES (39, 2, '2020-09-21 13:14:46');
INSERT INTO SpotifyClone.Historico VALUES (6, 3, '2020-11-13 16:55:13');
INSERT INTO SpotifyClone.Historico VALUES (3, 3, '2020-12-05 18:38:30');
INSERT INTO SpotifyClone.Historico VALUES (26, 3, '2020-07-30 10:00:00');
INSERT INTO SpotifyClone.Historico VALUES (2, 4, '2021-08-15 17:10:10');
INSERT INTO SpotifyClone.Historico VALUES (35, 4, '2021-07-10 15:20:30');
INSERT INTO SpotifyClone.Historico VALUES (27, 4, '2021-01-09 01:44:33');
INSERT INTO SpotifyClone.Historico VALUES (7, 5, '2020-07-03 19:33:28');
INSERT INTO SpotifyClone.Historico VALUES (12, 5, '2017-02-24 21:14:22');
INSERT INTO SpotifyClone.Historico VALUES (14, 5, '2020-08-06 15:23:43');
INSERT INTO SpotifyClone.Historico VALUES (1, 5, '2020-11-10 13:52:27');
INSERT INTO SpotifyClone.Historico VALUES (38, 6, '2019-02-07 20:33:48');
INSERT INTO SpotifyClone.Historico VALUES (29, 6, '2017-01-24 00:31:17');
INSERT INTO SpotifyClone.Historico VALUES (30, 6, '2017-10-12 12:35:20');
INSERT INTO SpotifyClone.Historico VALUES (22, 6, '2018-05-29 14:56:41');
INSERT INTO SpotifyClone.Historico VALUES (5, 7, '2018-05-09 22:30:49');
INSERT INTO SpotifyClone.Historico VALUES (4, 7, '2020-07-27 12:52:58');
INSERT INTO SpotifyClone.Historico VALUES (11, 7, '2018-01-16 18:40:43');
INSERT INTO SpotifyClone.Historico VALUES (39, 8, '2018-03-21 16:56:40');
INSERT INTO SpotifyClone.Historico VALUES (40, 8, '2020-10-18 13:38:05');
INSERT INTO SpotifyClone.Historico VALUES (32, 8, '2019-05-25 08:14:03');
INSERT INTO SpotifyClone.Historico VALUES (33, 8, '2021-08-15 21:37:09');
INSERT INTO SpotifyClone.Historico VALUES (16, 9, '2021-05-24 17:23:45');
INSERT INTO SpotifyClone.Historico VALUES (17, 9, '2018-12-07 22:48:52');
INSERT INTO SpotifyClone.Historico VALUES (8, 9, '2021-03-14 06:14:26');
INSERT INTO SpotifyClone.Historico VALUES (9, 9, '2020-04-01 03:36:00');
INSERT INTO SpotifyClone.Historico VALUES (20, 10, '2017-02-06 08:21:34');
INSERT INTO SpotifyClone.Historico VALUES (21, 10, '2017-12-04 05:33:43');
INSERT INTO SpotifyClone.Historico VALUES (12, 10, '2017-07-27 05:24:49');
INSERT INTO SpotifyClone.Historico VALUES (13, 10, '2017-12-25 01:03:57');

SELECT
	al.nome AS album, 
    a.nome AS artista
FROM
	SpotifyClone.Album al
LEFT JOIN SpotifyClone.Artista a ON al.artista_id = a.id
WHERE a.nome = 'Walter Phoenix';
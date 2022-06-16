SELECT
	al.nome AS album,
	a.nome AS artista,
  count(rs.usuario_id) AS seguidores
FROM
	SpotifyClone.Album al
LEFT JOIN SpotifyClone.Artista a ON al.artista_id = a.id
INNER JOIN SpotifyClone.registro_seguidores rs ON a.id = rs.artista_id
GROUP BY album
ORDER BY seguidores DESC, artista, album;
SELECT
	count(h.musica_id) AS quantidade_musicas_no_historico
FROM
	SpotifyClone.Historico h
INNER JOIN SpotifyClone.Usuario u ON h.usuario_id = u.id
WHERE u.nome = 'Bill';
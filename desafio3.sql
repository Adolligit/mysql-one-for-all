SELECT
	u.nome AS usuario,
	count(h.musica_id) AS qtde_musicas_ouvidas,
    round(sum(m.duracao_segundos) / 60, 2) AS total_minutos
FROM
	SpotifyClone.Historico h
INNER JOIN SpotifyClone.Musica m ON h.musica_id = m.id
INNER JOIN SpotifyClone.Usuario u ON h.usuario_id = u.id
GROUP BY u.nome;
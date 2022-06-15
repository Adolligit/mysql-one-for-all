SELECT
	m.nome AS cancao,
    count(h.musica_id) AS reproducoes
FROM 
	SpotifyClone.Historico h
INNER JOIN SpotifyClone.Musica m ON m.id = h.musica_id
GROUP BY cancao
HAVING count(cancao) = 2
ORDER BY cancao
LIMIT 2;
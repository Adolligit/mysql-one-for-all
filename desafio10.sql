SELECT
	m.nome AS nome, 
    count(h.musica_id) AS reproducoes
FROM
	SpotifyClone.Historico h
LEFT JOIN SpotifyClone.Musica m ON m.id = h.musica_id
RIGHT JOIN SpotifyClone.Usuario u ON u.id = h.usuario_id
INNER JOIN SpotifyClone.Plano p ON p.id = u.plano_id
WHERE p.nome = 'gratuito' || p.nome = 'pessoal'
GROUP BY nome
ORDER BY nome;
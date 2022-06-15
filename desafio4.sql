SELECT
	u.nome AS usuario,
    IF(max(YEAR(h.dt_reproducao)) >= 2021, 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
FROM
    SpotifyClone.Usuario u
INNER JOIN SpotifyClone.Historico h ON u.id = h.usuario_id
GROUP BY u.nome;
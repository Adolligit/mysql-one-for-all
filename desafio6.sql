SELECT
	round(max(p.valor), 2) AS faturamento_maximo,
    round(avg(p.valor), 2) AS faturamento_medio,
	round(min(p.valor), 2) AS faturamento_minimo,
    round(sum(p.valor), 2) AS faturamento_total
FROM
	SpotifyClone.Usuario u
INNER JOIN SpotifyClone.Plano p ON u.plano_id = p.id;
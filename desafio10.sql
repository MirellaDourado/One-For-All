SELECT 
	m.music_name AS nome,
    COUNT(h.music_id) AS reproducoes
FROM SpotifyClone.musics AS m
	INNER JOIN SpotifyClone.history AS h
		ON h.music_id = m.music_id
	INNER JOIN SpotifyClone.users AS u
		ON h.user_id = u.user_id
	INNER JOIN SpotifyClone.plans AS p
		ON p.plan_id = u.plan_id
WHERE p.plan_type IN ('gratuito', 'pessoal')
GROUP BY m.music_name
ORDER BY m.music_name ASC;
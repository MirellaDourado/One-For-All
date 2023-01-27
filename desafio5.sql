SELECT
	m.music_name AS cancao,
    COUNT(h.user_id) AS reproducoes
	FROM SpotifyClone.musics AS m
    INNER JOIN SpotifyClone.`history` AS h
        ON m.music_id = h.music_id 
	GROUP BY m.music_name
    ORDER BY COUNT(user_id) DESC, music_name
    LIMIT 2;
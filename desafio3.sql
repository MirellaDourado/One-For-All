SELECT
    u.user_name AS usuario,
    COUNT(h.music_id) AS qt_de_musicas_ouvidas,
    SUM(ROUND(m.duration_seconds / 60, 2)) AS total_minutos
FROM SpotifyClone.users AS u
    INNER JOIN SpotifyClone.history AS h
      ON u.user_id = h.user_id
    INNER JOIN SpotifyClone.musics AS m
      ON m.music_id = h.music_id
GROUP BY u.user_name
ORDER BY u.user_name;
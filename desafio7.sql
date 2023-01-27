SELECT 
	DISTINCT ar.artist_name AS artista,
    al.album_name AS album,
    COUNT(f.artist_id) as seguidores
FROM SpotifyClone.artists AS ar
    INNER JOIN SpotifyClone.following_artists as f
		ON f.artist_id = ar.artist_id
	INNER JOIN SpotifyClone.albums AS al
		ON al.artist_id = f.artist_id
	GROUP BY al.album_name, f.artist_id
ORDER BY COUNT(f.artist_id) DESC, ar.artist_name, al.album_name;
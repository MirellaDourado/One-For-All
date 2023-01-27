SELECT 
	ar.artist_name AS artista,
    al.album_name AS album
FROM SpotifyClone.artists AS ar
	INNER JOIN SpotifyClone.albums AS al
		ON al.artist_id = ar.artist_id
WHERE ar.artist_name = 'Elis Regina';
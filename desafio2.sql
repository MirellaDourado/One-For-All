SELECT 
  COUNT(DISTINCT m.music_id) AS cancoes,
  COUNT(DISTINCT ar.artist_id) AS artistas,
  COUNT(DISTINCT al.album_id) AS albuns
FROM SpotifyClone.musics AS m
  INNER JOIN SpotifyClone.artists as ar
  INNER JOIN SpotifyClone.albums as al;
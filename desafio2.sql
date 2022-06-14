SELECT 
	  MAX(m.id) cancoes,
    MAX(a.id) artistas,
    MAX(al.id) albuns
FROM 
  SpotifyClone.Album al,
  SpotifyClone.Musica m,
  SpotifyClone.Artista a;
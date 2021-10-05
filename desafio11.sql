CREATE VIEW cancoes_premium AS
SELECT 
m.nome AS nome,
COUNT(um.id_usuario) AS reproducoes
FROM SpotifyClone.usuario_musica AS um
INNER JOIN
SpotifyClone.usuario AS u ON u.id_usuario = um.id_usuario
INNER JOIN
SpotifyClone.musica AS m ON m.id_musica = um.id_musica
INNER JOIN
SpotifyClone.plano AS p ON p.id_plano = u.id_plano
WHERE p.id_plano IN (2, 3)
GROUP BY nome
ORDER BY nome;

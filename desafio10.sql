DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(id_usuario INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_musicas INT;
SELECT COUNT(id_musica)
FROM SpotifyClone.usuario_musica AS um
INNER JOIN SpotifyClone.usuario AS u ON u.id_usuario = um.id_usuario
WHERE u.id_usuario = id_usuario
GROUP BY um.id_usuario INTO total_musicas;
RETURN total_musicas;
END $$

DELIMITER ;

SELECT quantidade_musicas_no_historico(3);

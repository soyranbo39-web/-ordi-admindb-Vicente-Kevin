
START TRANSACTION;

INSERT INTO canciones (titulo, id_album, id_artista, duracion, es_publica, created_at, created_by, updated_at, updated_by, active) VALUES
('Cancion 11', 1, 1, 200, 1, NOW(), 'admin', NOW(), 'admin', 1),
('Cancion 12', 1, 1, 210, 1, NOW(), 'admin', NOW(), 'admin', 1),
('Cancion 13', 2, 2, 220, 1, NOW(), 'admin', NOW(), 'admin', 1),
('Cancion 14', 2, 2, 230, 1, NOW(), 'admin', NOW(), 'admin', 1),
('Cancion 15', 3, 3, 240, 1, NOW(), 'admin', NOW(), 'admin', 1),
('Cancion 16', 3, 3, 250, 1, NOW(), 'admin', NOW(), 'admin', 1),
('Cancion 17', 4, 4, 260, 1, NOW(), 'admin', NOW(), 'admin', 1),
('Cancion 18', 4, 4, 270, 1, NOW(), 'admin', NOW(), 'admin', 1),
('Cancion 19', 5, 5, 280, 1, NOW(), 'admin', NOW(), 'admin', 1),
('Cancion 20', 5, 5, 100, 1, NOW(), 'admin', NOW(), 'admin', 1);

ROLLBACK;
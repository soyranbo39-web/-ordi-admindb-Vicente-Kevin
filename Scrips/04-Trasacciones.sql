
START TRANSACTION;

INSERT INTO canciones (titulo, id_album, id_artista, duracion, es_publica, created_at, created_by, updated_at, updated_by, active) VALUES
('Cancion 1', 1, 1, 200, 1, NOW(), 'admin', NOW(), 'admin', 1),
('Cancion 2', 1, 1, 210, 1, NOW(), 'admin', NOW(), 'admin', 1),
('Cancion 3', 2, 2, 220, 1, NOW(), 'admin', NOW(), 'admin', 1),
('Cancion 4', 2, 2, 230, 1, NOW(), 'admin', NOW(), 'admin', 1),
('Cancion 5', 3, 3, 240, 1, NOW(), 'admin', NOW(), 'admin', 1),
('Cancion 6', 3, 3, 250, 1, NOW(), 'admin', NOW(), 'admin', 1),
('Cancion 7', 4, 4, 260, 1, NOW(), 'admin', NOW(), 'admin', 1),
('Cancion 8', 4, 4, 270, 1, NOW(), 'admin', NOW(), 'admin', 1),
('Cancion 9', 5, 5, 280, 1, NOW(), 'admin', NOW(), 'admin', 1),
('Cancion 10', 5, 5, 290, 1, NOW(), 'admin', NOW(), 'admin', 1);

COMMIT;
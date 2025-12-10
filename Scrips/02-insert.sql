
INSERT IGNORE INTO generos (nombre, created_at, created_by, updated_at, updated_by, active) VALUES
('Rock', NOW(), 'admin', NOW(), 'admin', 1),
('Pop', NOW(), 'admin', NOW(), 'admin', 1),
('Reggaeton', NOW(), 'admin', NOW(), 'admin', 1),
('Jazz', NOW(), 'admin', NOW(), 'admin', 1),
('Electronica', NOW(), 'admin', NOW(), 'admin', 1);


INSERT IGNORE INTO artistas (nombre, genero_id, created_at, created_by, updated_at, updated_by, active) VALUES
('Queen', 1, NOW(), 'admin', NOW(), 'admin', 1),
('Shakira', 2, NOW(), 'admin', NOW(), 'admin', 1),
('Bad Bunny', 3, NOW(), 'admin', NOW(), 'admin', 1),
('Miles Davis', 4, NOW(), 'admin', NOW(), 'admin', 1),
('Daft Punk', 5, NOW(), 'admin', NOW(), 'admin', 1);


INSERT IGNORE INTO albums (titulo, id_artista, id_genero, portada, fecha_lanzamiento, created_at, created_by, updated_at, updated_by, active) VALUES
('A Night at the Opera', 1, 1, 'queen_opera.jpg', '1975-11-21', NOW(), 'admin', NOW(), 'admin', 1),
('Laundry Service', 2, 2, 'shakira_laundry.jpg', '2001-11-13', NOW(), 'admin', NOW(), 'admin', 1),
('YHLQMDLG', 3, 3, 'badbunny_yhlqmdlg.jpg', '2020-02-29', NOW(), 'admin', NOW(), 'admin', 1),
('Kind of Blue', 4, 4, 'milesdavis_kindofblue.jpg', '1959-08-17', NOW(), 'admin', NOW(), 'admin', 1),
('Discovery', 5, 5, 'daftpunk_discovery.jpg', '2001-03-12', NOW(), 'admin', NOW(), 'admin', 1);


INSERT IGNORE INTO canciones (titulo, id_album, id_artista, duracion, es_publica, created_at, created_by, updated_at, updated_by, active) VALUES
('Bohemian Rhapsody', 1, 1, 354, 1, NOW(), 'admin', NOW(), 'admin', 1),
('Somebody to Love', 1, 1, 295, 1, NOW(), 'admin', NOW(), 'admin', 1),
('Whenever, Wherever', 2, 2, 210, 1, NOW(), 'admin', NOW(), 'admin', 1),
('Objection', 2, 2, 220, 1, NOW(), 'admin', NOW(), 'admin', 1),
('Safaera', 3, 3, 300, 1, NOW(), 'admin', NOW(), 'admin', 1),
('La Difícil', 3, 3, 180, 1, NOW(), 'admin', NOW(), 'admin', 1),
('So What', 4, 4, 545, 1, NOW(), 'admin', NOW(), 'admin', 1),
('Blue in Green', 4, 4, 329, 1, NOW(), 'admin', NOW(), 'admin', 1),
('One More Time', 5, 5, 320, 1, NOW(), 'admin', NOW(), 'admin', 1),
('Digital Love', 5, 5, 300, 1, NOW(), 'admin', NOW(), 'admin', 1);


INSERT IGNORE INTO usuarios (nombre, correo, pais, fecha_nacimiento, fecha_registro, created_at, created_by, updated_at, updated_by, active) VALUES
('Juan Perez', 'juanperez@mail.com', 'México', '1990-05-10', NOW(), NOW(), 'admin', NOW(), 'admin', 1),
('Ana Gómez', 'anagomez@mail.com', 'Colombia', '1985-08-22', NOW(), NOW(), 'admin', NOW(), 'admin', 1),
('Carlos Ruiz', 'carlosruiz@mail.com', 'Argentina', '2000-01-15', NOW(), NOW(), 'admin', NOW(), 'admin', 1),
('Lucía Torres', 'luciatorres@mail.com', 'Chile', '1995-12-30', NOW(), NOW(), 'admin', NOW(), 'admin', 1),
('Pedro Silva', 'pedrosilva@mail.com', 'Perú', '1988-03-05', NOW(), NOW(), 'admin', NOW(), 'admin', 1);


INSERT IGNORE INTO roles (nombre, descripcion, created_at, created_by, updated_at, updated_by, active) VALUES
('admin', 'Administrador total', NOW(), 'admin', NOW(), 'admin', 1),
('auditor', 'Auditoría y escritura', NOW(), 'admin', NOW(), 'admin', 1),
('programador', 'Solo lectura', NOW(), 'admin', NOW(), 'admin', 1);


INSERT IGNORE INTO usuarios_roles (id_usuario, id_rol, created_at, created_by, updated_at, updated_by, active) VALUES
(1, 1, NOW(), 'admin', NOW(), 'admin', 1),
(2, 2, NOW(), 'admin', NOW(), 'admin', 1),
(3, 3, NOW(), 'admin', NOW(), 'admin', 1),
(4, 2, NOW(), 'admin', NOW(), 'admin', 1),
(5, 3, NOW(), 'admin', NOW(), 'admin', 1);


INSERT IGNORE INTO playlists (nombre, id_usuario, created_at, created_by, updated_at, updated_by, active) VALUES
('Rock Clásico', 1, NOW(), 'admin', NOW(), 'admin', 1),
('Pop Hits', 2, NOW(), 'admin', NOW(), 'admin', 1),
('Reggaeton Party', 3, NOW(), 'admin', NOW(), 'admin', 1),
('Jazz Relax', 4, NOW(), 'admin', NOW(), 'admin', 1),
('Electro Vibes', 5, NOW(), 'admin', NOW(), 'admin', 1);


INSERT IGNORE INTO playlists_canciones (id_playlist, id_cancion, orden, created_at, created_by, updated_at, updated_by, active) VALUES
(1, 1, 1, NOW(), 'admin', NOW(), 'admin', 1),
(1, 2, 2, NOW(), 'admin', NOW(), 'admin', 1),
(2, 3, 1, NOW(), 'admin', NOW(), 'admin', 1),
(2, 4, 2, NOW(), 'admin', NOW(), 'admin', 1),
(3, 5, 1, NOW(), 'admin', NOW(), 'admin', 1),
(3, 6, 2, NOW(), 'admin', NOW(), 'admin', 1),
(4, 7, 1, NOW(), 'admin', NOW(), 'admin', 1),
(4, 8, 2, NOW(), 'admin', NOW(), 'admin', 1),
(5, 9, 1, NOW(), 'admin', NOW(), 'admin', 1),
(5, 10, 2, NOW(), 'admin', NOW(), 'admin', 1);


INSERT IGNORE INTO escuchas (id_usuario, id_cancion, timestamp, duracion, created_at, created_by, updated_at, updated_by, active) VALUES
(1, 1, '2025-01-10 10:00:00', 354, NOW(), 'admin', NOW(), 'admin', 1),
(2, 3, '2025-02-15 12:30:00', 210, NOW(), 'admin', NOW(), 'admin', 1),
(3, 5, '2025-03-20 15:45:00', 300, NOW(), 'admin', NOW(), 'admin', 1),
(4, 7, '2025-04-25 18:00:00', 545, NOW(), 'admin', NOW(), 'admin', 1),
(5, 9, '2025-05-30 20:15:00', 320, NOW(), 'admin', NOW(), 'admin', 1);


INSERT IGNORE INTO suscripciones (id_usuario, tipo, fecha_inicio, fecha_fin, estado, created_at, created_by, updated_at, updated_by, active) VALUES
(1, 'premium', '2025-01-01', '2025-12-31', 'activa', NOW(), 'admin', NOW(), 'admin', 1),
(2, 'free', '2025-01-01', NULL, 'activa', NOW(), 'admin', NOW(), 'admin', 1),
(3, 'familiar', '2025-01-01', '2025-06-30', 'cancelada', NOW(), 'admin', NOW(), 'admin', 1),
(4, 'estudiantil', '2025-01-01', '2025-12-31', 'activa', NOW(), 'admin', NOW(), 'admin', 1),
(5, 'premium', '2025-01-01', '2025-03-31', 'cancelada', NOW(), 'admin', NOW(), 'admin', 1);
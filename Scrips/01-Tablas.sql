
CREATE TABLE IF NOT EXISTS generos (
  id_genero INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(50) UNIQUE,
  created_at DATETIME,
  created_by VARCHAR(50),
  updated_at DATETIME,
  updated_by VARCHAR(50),
  active BOOLEAN
);

CREATE TABLE IF NOT EXISTS artistas (
  id_artista INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100),
  genero_id INT,
  created_at DATETIME,
  created_by VARCHAR(50),
  updated_at DATETIME,
  updated_by VARCHAR(50),
  active BOOLEAN,
  FOREIGN KEY (genero_id) REFERENCES generos(id_genero)
);

CREATE TABLE IF NOT EXISTS albums (
  id_album INT AUTO_INCREMENT PRIMARY KEY,
  titulo VARCHAR(100),
  id_artista INT,
  id_genero INT,
  portada VARCHAR(255),
  fecha_lanzamiento DATE,
  created_at DATETIME,
  created_by VARCHAR(50),
  updated_at DATETIME,
  updated_by VARCHAR(50),
  active BOOLEAN,
  FOREIGN KEY (id_artista) REFERENCES artistas(id_artista),
  FOREIGN KEY (id_genero) REFERENCES generos(id_genero)
);

CREATE TABLE IF NOT EXISTS canciones (
  id_cancion INT AUTO_INCREMENT PRIMARY KEY,
  titulo VARCHAR(100),
  id_album INT,
  id_artista INT,
  duracion INT,
  es_publica BOOLEAN,
  created_at DATETIME,
  created_by VARCHAR(50),
  updated_at DATETIME,
  updated_by VARCHAR(50),
  active BOOLEAN,
  FOREIGN KEY (id_album) REFERENCES albums(id_album),
  FOREIGN KEY (id_artista) REFERENCES artistas(id_artista)
);

CREATE TABLE IF NOT EXISTS usuarios (
  id_usuario INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100),
  correo VARCHAR(100) UNIQUE,
  pais VARCHAR(50),
  fecha_nacimiento DATE,
  fecha_registro DATETIME,
  created_at DATETIME,
  created_by VARCHAR(50),
  updated_at DATETIME,
  updated_by VARCHAR(50),
  active BOOLEAN
);

CREATE TABLE IF NOT EXISTS roles (
  id_rol INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(50) UNIQUE,
  descripcion VARCHAR(100),
  created_at DATETIME,
  created_by VARCHAR(50),
  updated_at DATETIME,
  updated_by VARCHAR(50),
  active BOOLEAN
);

CREATE TABLE IF NOT EXISTS usuarios_roles (
  id_usuario INT,
  id_rol INT,
  created_at DATETIME,
  created_by VARCHAR(50),
  updated_at DATETIME,
  updated_by VARCHAR(50),
  active BOOLEAN,
  PRIMARY KEY (id_usuario, id_rol),
  FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario),
  FOREIGN KEY (id_rol) REFERENCES roles(id_rol)
);

CREATE TABLE IF NOT EXISTS playlists (
  id_playlist INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100),
  id_usuario INT,
  created_at DATETIME,
  created_by VARCHAR(50),
  updated_at DATETIME,
  updated_by VARCHAR(50),
  active BOOLEAN,
  FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario)
);

CREATE TABLE IF NOT EXISTS playlists_canciones (
  id_playlist INT,
  id_cancion INT,
  orden INT,
  created_at DATETIME,
  created_by VARCHAR(50),
  updated_at DATETIME,
  updated_by VARCHAR(50),
  active BOOLEAN,
  PRIMARY KEY (id_playlist, id_cancion),
  FOREIGN KEY (id_playlist) REFERENCES playlists(id_playlist),
  FOREIGN KEY (id_cancion) REFERENCES canciones(id_cancion)
);

CREATE TABLE IF NOT EXISTS escuchas (
  id_escucha INT AUTO_INCREMENT PRIMARY KEY,
  id_usuario INT,
  id_cancion INT,
  timestamp DATETIME,
  duracion INT,
  created_at DATETIME,
  created_by VARCHAR(50),
  updated_at DATETIME,
  updated_by VARCHAR(50),
  active BOOLEAN,
  FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario),
  FOREIGN KEY (id_cancion) REFERENCES canciones(id_cancion)
);

CREATE TABLE IF NOT EXISTS suscripciones (
  id_suscripcion INT AUTO_INCREMENT PRIMARY KEY,
  id_usuario INT,
  tipo VARCHAR(20),
  fecha_inicio DATE,
  fecha_fin DATE,
  estado VARCHAR(20),
  created_at DATETIME,
  created_by VARCHAR(50),
  updated_at DATETIME,
  updated_by VARCHAR(50),
  active BOOLEAN,
  FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario)
);

CREATE USER IF NOT EXISTS 'admin_db'@'%' IDENTIFIED BY 'Admin123!';
GRANT ALL PRIVILEGES ON *.* TO 'admin_db'@'%' WITH GRANT OPTION;

CREATE USER IF NOT EXISTS 'auditor_db'@'%' IDENTIFIED BY 'Auditor123!';
GRANT SELECT, INSERT, UPDATE ON tu_base_de_datos.* TO 'auditor_db'@'%';

CREATE USER IF NOT EXISTS 'programador_db'@'%' IDENTIFIED BY 'Programador123!';
GRANT SELECT ON tu_base_de_datos.* TO 'programador_db'@'%';

FLUSH PRIVILEGES;

SELECT u.nombre, SUM(e.duracion) AS minutos
FROM usuarios u
JOIN escuchas e ON u.id_usuario = e.id_usuario
WHERE YEAR(e.timestamp) = 2025
GROUP BY u.id_usuario
ORDER BY minutos DESC
LIMIT 1;

SELECT u.nombre, COUNT(*) AS veces, GROUP_CONCAT(MONTH(s.fecha_fin)) AS meses_cancelados
FROM usuarios u
JOIN suscripciones s ON u.id_usuario = s.id_usuario
WHERE YEAR(s.fecha_fin) = 2025 AND s.estado = 'cancelada'
GROUP BY u.id_usuario
ORDER BY veces DESC
LIMIT 1;

SELECT MONTH(fecha_inicio) AS mes, COUNT(*) AS cantidad
FROM suscripciones
WHERE YEAR(fecha_inicio) = 2025 AND tipo IN ('premium', 'familiar', 'estudiantil')
GROUP BY mes
ORDER BY mes;
DROP TABLE IF EXISTS noticias;
CREATE TABLE noticias (
    noticia_id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(150),
    resumen VARCHAR(200),
    fecha_publicacion DATE,
    visible BOOLEAN
);

INSERT INTO noticias (titulo, resumen, fecha_publicacion, visible) VALUES
('Avances en IA', 'Resumen de inteligencia artificial 2025.', '2025-01-10', 1),
('Economía Global', 'Análisis del mercado internacional.', '2025-02-15', 1),
('Deportes Hoy', 'Resultados de la liga nacional.', '2025-03-05', 1),
('Clima Mañana', 'Pronóstico de lluvias en la costa.', '2025-04-12', 0),
('Cultura Maya', 'Descubrimientos en Copán Ruinas.', '2025-05-20', 1),
('Salud Viral', 'Nuevas vacunas disponibles.', '2025-06-18', 1),
('Tecnología Verde', 'Paneles solares de alta eficiencia.', '2025-07-22', 1),
('Viajes 2025', 'Mejores destinos turísticos.', '2025-08-30', 0),
('Cocina Local', 'Receta de baleadas tradicionales.', '2025-09-14', 1),
('Tráfico Urbano', 'Cierres en el bulevar principal.', '2025-10-02', 1),
('Espacio Profundo', 'Nuevas fotos del James Webb.', '2025-11-05', 1),
('Seguridad Red', 'Cómo proteger tus contraseñas.', '2025-12-01', 1),
('Arte Moderno', 'Inauguración de galería nacional.', '2024-01-20', 0),
('Moda Sostenible', 'Tendencias de ropa reciclada.', '2024-02-28', 1),
('Cine de Culto', 'Ciclo de películas clásicas.', '2024-03-15', 1),
('Festivales 2024', 'Agenda de conciertos de verano.', '2024-04-10', 1),
('Empleo Tech', 'Feria de trabajo para programadores.', '2024-05-05', 1),
('Política Local', 'Nuevas reformas municipales.', '2024-06-30', 0),
('Vida Sana', 'Beneficios de caminar a diario.', '2024-07-15', 1),
('Mascotas Felices', 'Tips para el cuidado de perros.', '2024-08-20', 1);

-- Tabla: catalogo.productos

COMMENT ON TABLE catalogo.productos
    IS 'Almacena información de productos';
	
-- Crear esquema si no existe
CREATE SCHEMA IF NOT EXISTS catalogo
    AUTHORIZATION postgres;  -- Ajusta el usuario según la configuración

COMMENT ON SCHEMA catalogo IS 'Esquema para catálogo de productos';

/* *************** Tabla: productos *************** */
-- Eliminar tabla si existe (para reiniciar)
DROP TABLE IF EXISTS catalogo.productos CASCADE;

-- Crear tabla
CREATE TABLE catalogo.productos (
    id_producto SERIAL PRIMARY KEY, -- SERIAL esta obsoleto pero para mantener la simplicidad lo use para este ejercicio
    nombre VARCHAR(100) NOT NULL, -- Límite razonable para cadenas de texto en 'nombre'
    categoria VARCHAR(30) NOT NULL, -- Límite razonable para cadenas de texto en 'categorias'
    precio NUMERIC(10) NOT NULL CHECK (precio >= 0) -- Para evitar numeros negativos
);

-- Comentarios descriptivos
COMMENT ON TABLE catalogo.productos IS 'Almacena información de los productos';
COMMENT ON COLUMN catalogo.productos.id_producto IS 'Identificador único autoincremental';
COMMENT ON COLUMN catalogo.productos.nombre IS 'Nombre del producto (máx. 100 caracteres)';
COMMENT ON COLUMN catalogo.productos.categoria IS 'Categoría del producto (ej: Electrónica, Ropa)';
COMMENT ON COLUMN catalogo.productos.precio IS 'Precio en formato numérico ';


/* *************** Registros de ejemplo *************** */
INSERT INTO catalogo.productos(nombre, categoria, precio)
VALUES
	('Laptop Gamer ASUS', 'Tecnología', 1800000),
	('Libro Python Para Data Science', 'Libros', 100000),
	('Memoria USB 64GB', 'Tecnología', 72000),
	('Peluche Tux Linux', 'Juguetes', 30000),
	('Libro SQL Avanzado', 'Libros', 60000 );

SELECT * FROM catalogo.productos;
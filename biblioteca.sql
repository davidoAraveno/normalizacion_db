CREATE DATABASE prestamos_libros;

\c prestamos_libros;

CREATE TABLE autores(
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(40) NOT NULL
);

CREATE TABLE editoriales(
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(30) NOT NULL
);

CREATE TABLE lectores(
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(40) NOT NULL
);

CREATE TABLE prestamos(
    codigo_libro INT NOT NULL UNIQUE,
    titulo VARCHAR(40) NOT NULL,
    autor_id INT,
    editorial_id INT,
    lector_id INT,
    fecha_devolucion DATE,
    FOREIGN KEY (autor_id) REFERENCES autores(id),
    FOREIGN KEY (editorial_id) REFERENCES editoriales(id),
    FOREIGN KEY (lector_id) REFERENCES lectores(id)
);
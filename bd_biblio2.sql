CREATE TABLE categorias (
  id int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  descripcion varchar(100)
);

INSERT INTO categorias VALUES (1, '');
INSERT INTO categorias VALUES (2, '');
INSERT INTO categorias VALUES (3, '');

CREATE TABLE libros (
  id int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  titulo varchar(128),
  autor varchar(128),
  disponible int(11),
  categoria_id int(11),
  FOREIGN KEY (categoria_id) REFERENCES categorias(id)
);

INSERT INTO libros VALUES (1, '', 't', 1, 3);
INSERT INTO libros VALUES (2, '', 'Dan Brown', 1, 1);
CREATE TABLE personas ( 
  id_persona int auto_increment,
  nombre varchar(190),
  edad  int,
  direccion text,
  primary key (id_persona) 
);
 
INSERT INTO `personas` (`nombre`, `edad`, `direccion`) VALUES
('Yernis dela Polo', '32', 'Carrera 42B # 114 - 31'),
('ALBA NELSYZ', '60', 'Calle 11 # 1 - 35 BRR'),
('ALBER QUINTERO', '50','Carrera 79F # 52 - 15 BRR'),
('ANNY NEONELDYA', '11', 'Carrera 4B # 48D - 04'),
('ARLEY TRUJILLO', '12', 'Calle 139 # 145B - 09 BRR'),
('ASTRID CAROLINAO', '13','Calle 31 # 30 - 04'),
('BRINEIDY LEONILDEA', '41', 'Calle 73A SUR # 18B - 14 BRR'),
('CARLOS MARIOS', '10', 'Carrera 33 # 47B - 24'),
('DEL CAMPOU DESPENSA', '90', 'Calle 9 # 7 - 17'),
('CARMEN ISABELA', '22', 'Carrera 19 # 22 - 86 BRR'),
('CESAR AUGUSTOZ', '10', 'Carrera 2 # 4 - 13 BRR'),
('CESAR RAMIRON', '79', 'Carrera 6F # 3018'),
('CRISTIAN DANIELS', '11', 'Calle 37C # 2 - 61 202'),
('DAIRO ESTIVENO', '10',  'Calle 2 # 1 - 31 BRR '),
('DANIEL ANTONIOO', '80', 'Carrera 104 # 13d'),
('DAIRO NELS', '70',  'Calle 2 # 22 - CORRE'),
('DEIVID DUVANN', '12', 'Calle 82 # 92');



CREATE TABLE categorias( 
  id_categoria int auto_increment,
  nombre varchar(190),
  primary key (id_categoria) 
);


INSERT INTO `categorias` (`nombre`) VALUES
('Vehículos'),
('Inmuebles'),
('Celulares y Teléfonos'),
('Accesorios para Vehículos'),
('Moda'),
('Electrodomésticos'),
('Hogar y Muebles'),
('TV, Audio y Video'),
('Computación'),
('Gaming'),
('Supermercado'),
('Deportes y Fitness'),
('Belleza y Cuidado personal'),
('Oficinas e Industrias'),
('Herramientas y Construcción'),
('Juguetes y Bebés'),
('Servicios'); 

  
CREATE TABLE productos( 
  id_producto int auto_increment,
  idCategoria int,
  nombre varchar(190),
  precio float,
  descripcion text,
  primary key (id_producto),
  foreign key (idCategoria) references categorias(id_categoria)
);


INSERT INTO `productos` (`idCategoria`,`nombre`,`precio`,`descripcion`) VALUES
(1,'Honda Accord',8000,'Vehiculo en perfecto estado, motor 6 cilindros 3.0.'),
(1,'Toyota Fortuner Dubai',73000,'Camioneta en impecables condiciones. Entrego resguardos, manuales, 2 llaves.'),
(2,'Hermoso Apartamento Tipo Estudio',13000,'Hermoso apartamento tipo estudio, 1 habitación, 1 baño, 1 pto Estacionamiento, piso bajo, vigilancia privada. cocina equipada, 2 aires acondicionados'),
(2,'Apartamento En Parroquia Central',18000,'Renta house trae para ti apartamento en venta ubicado en buena zona de la ciudad'),
(3,'Xiaomi Redmi Note 10s',219,'Nuevo'),
(3,'iPhone 12',879,'Poco uso'),
(4,'Rodanol Gt2000-2',5,'Grasa P/ Tripoides Y Crucetas 250 G'),
(4,'Pantalla Pioneer 9 Alexa ',1190,'Carplay Appradio Wifi Bluetooth Usb');
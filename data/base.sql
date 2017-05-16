create table tipos(
	id_tipo int(5) not null auto_increment primary key,
	tipo varchar(50) not null
)auto_increment=1000;

create table productos(
	id_producto int(5) not null auto_increment primary key,
	tipo int(5) not null,
	producto varchar(100) not null,
	exist int(6) not null,
	precio double(6,2),
	foreign key (tipo) references tipos (id_tipo)
)auto_increment=10000;

insert into tipos (tipo) values
('Anestesias'),
('Arcos en C'),
('Autoclaves'),
('Camas'),
('Camillas'),
('Colposcopios'),
('Cunas Termicas'),
('Densitometros'),
('Desfibriladores'),
('Electrocauterios'),
('Incubadoras'),
('Lamparas de quirofano'),
('Mastografos'),
('Mesas de cirugia'),
('Monitores'),
('MRI'),
('Rayos X'),
('Tomografos'),
('Ultrasonidos'),
('Ventiladores'),
('Pendantes');
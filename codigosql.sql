create table colorpiel (
pielId varchar(1) PRIMARY KEY,
color varchar(12)
);
create table colorOjos (
ojosId varchar(1) PRIMARY KEY,
color varchar(12)
);

create table colorPelo (
peloId varchar(1) PRIMARY KEY,
color varchar(12)
);

create table tipoPelo (
tipoId varchar(1) PRIMARY KEY,
tipo varchar(12)
);

create table desaparecidos (
desaparecidoId varchar(20) PRIMARY KEY,
nombre varchar(12) NOT NULL,
nombre2 varchar(12),
apeidos varchar(12) NOT NULL,
estatura number NOT NULL,
especiales varchar (200),
fecha_extravio date NOT NULL,
foto BLOB NOT NULL,
colorPelo varchar(12) NOT NULL,
tipoPelo varchar(12) NOT NULL,
colorOjos varchar(12) NOT NULL,
colorPiel varchar(12) NOT NULL,
rangoedad varchar(5) NOT NULL,
FOREIGN KEY (rangoedad) REFERENCES rango(rangoid),
FOREIGN KEY (colorPelo) REFERENCES colorpelo(peloid),
FOREIGN KEY (tipoPelo) REFERENCES tipopelo(tipoid),
FOREIGN KEY (colorOjos) REFERENCES colorojos(ojosid),
FOREIGN KEY (colorPiel) REFERENCES colorpiel(pielid)
);

create table encontrados(
encontradoID varchar(20) PRIMARY KEY,
nombre varchar(12),
nombre2 varchar(12),
apeidos varchar (12),
estatura number NOT NULL,
especiales varchar(200),
fecha_vista date NOT NULL,
ult_vez varchar(200) NOT NULL,
foto BLOB,
colorPelo varchar(12) NOT NULL,
tipoPelo varchar(12) NOT NULL,
colorOjos varchar(12) NOT NULL,
colorPiel varchar(12) NOT NULL,
rangoedad varchar(5) NOT NULL,
FOREIGN KEY (rangoedad) REFERENCES rango(rangoid),
FOREIGN KEY (colorPelo) REFERENCES colorpelo(peloid),
FOREIGN KEY (tipoPelo) REFERENCES tipopelo(tipoid),
FOREIGN KEY (colorOjos) REFERENCES colorojos(ojosid),
FOREIGN KEY (colorPiel) REFERENCES colorpiel(pielid)
);

CREATE TABLE rango (
rangoid varchar(1),
rango varchar(5) NOT NULL
);

create table coincidencia (
desaparecidoID varchar(12),
encontradoID varchar(12),
FOREIGN KEY (desaparecidoid) references desaparecidos(desaparecidoid),
foreign key (encontradoId) references encontrados(encontradoid)
);

alter table encontrados add foreign key (rangoedad) references rango (rangoid);
alter table desaparecidos add foreign key (rangoedad) references rango(rangoid);

create table usuarios (
usuarioId varchar(30) PRIMARY KEY,
contraseña varchar(30) NOT NULL
);



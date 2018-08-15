CREATE DATABASE empresa;
USE empresa;

CREATE TABLE empleados(
	codigo INT PRIMARY KEY AUTO_INCREMENT,
	apellidos VARCHAR(50),
	nombres VARCHAR(50),
	sueldo DECIMAL(8,2)
);
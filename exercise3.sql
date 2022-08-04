CREATE TABLE Funcionarios (
  PrimeiroNome VARCHAR(255),
  UltimoNome VARCHAR(255),
  DtNasci DATE,
  Endereco VARCHAR(255),
  Cidade VARCHAR(255),
  CodigoDepartamento INT(20),
  Funcao VARCHAR(255),
  Salario DECIMAL(10, 2)
);

CREATE TABLE Departamentos (
  Codigo INT(20),
  Nome VARCHAR(255),
  Localizacao VARCHAR(255),
  CodigoGerente INT(20)
);

SELECT DISTINCT
	depart.Nome
FROM 
	Funcionarios AS func
JOIN
	Departamentos AS depart
ON
	func.CodigoDepartamento = depart.Codigo
WHERE 
	func.Funcao IN ("Supervisor", "Gerente")
ORDER BY 
	depart.Nome 
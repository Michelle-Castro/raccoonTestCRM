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

SELECT 
	depart.Nome,
    SUM(func.Salario) AS valorFolhaPagamento
FROM 
	Funcionarios AS func
JOIN
	Departamentos AS depart
ON
	func.CodigoDepartamento = depart.Codigo
GROUP BY
	depart.Nome
ORDER BY 
	depart.Nome 
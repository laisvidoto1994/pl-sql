/*
 	(PROCEDURE) Criar uma procedure que atualiza o sal�rio de determinado 
                funcion�rio em um aumento de 10%. Caso o funcion�rio n�o exista, 
                emita uma mensagem de alerta;
*/
CREATE TABLE TB_FUNCIONARIO
(
  COD_FUN  NUMBER(5),
  NOME     VARCHAR2(50),
  SALARIO  NUMBER(7,2),
  CONSTRAINT CONS_FUNCIONARIO_COD_FUN PRIMARY KEY (COD_FUN)
)

SELECT * FROM TB_FUNCIONARIO;



INSERT INTO TB_FUNCIONARIO( COD_FUN, NOME, SALARIO )
  VALUES( 1,'Jo�o Batista',1200 );

INSERT INTO TB_FUNCIONARIO( COD_FUN, NOME, SALARIO )
  VALUES( 2,'Lais Ingrid',1500 );

INSERT INTO TB_FUNCIONARIO( COD_FUN, NOME, SALARIO )
  VALUES( 3,'Marcos Vinicius',1000 );

BEGIN

    procedure_atualiza_salario(2);

END;

DROP TABLE TB_FUNCIONARIO;


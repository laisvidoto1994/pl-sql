/*
 	(PROCEDURE) Criar uma procedure que atualiza o salário de determinado 
                funcionário em um aumento de 10%. Caso o funcionário não exista, 
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
  VALUES( 1,'João Batista',1200 );

INSERT INTO TB_FUNCIONARIO( COD_FUN, NOME, SALARIO )
  VALUES( 2,'Lais Ingrid',1500 );

INSERT INTO TB_FUNCIONARIO( COD_FUN, NOME, SALARIO )
  VALUES( 3,'Marcos Vinicius',1000 );

BEGIN

    procedure_atualiza_salario(2);

END;

DROP TABLE TB_FUNCIONARIO;


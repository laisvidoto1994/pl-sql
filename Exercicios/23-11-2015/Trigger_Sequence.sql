/*
1 - criar uma seguence
2 - utilizar a sequece para usar no comando de insert para atribuir o valor
incrementado pela sequence no campo de c�digo / pk.
3 - utilizar a sequence dentro de uma trigger de banco para quando inserir um
registro em uma determinada tabela o campo de c�digo seja gerado automaticamente.
*/

-- INICIO CRIA��O DA TABELA DE FUNCIONARIOS PARA TESTE --
CREATE TABLE TB_FUNCIONARIOS
(
      COD_FUNCIONARIO      NUMBER(3)
     ,NOME_FUNCIONARIO     VARCHAR2(20)
     ,SEXO_FUNCIONARIO     CHAR(1)
     ,IDADE_FUNCIONARIO    NUMBER(3)
     ,SALARIO_FUNCIONARIO  NUMBER(7,2)
      
)
-- FIM CRIA��O DA TABELA DE FUNCIONARIOS PARA TESTE --

SELECT * FROM TB_FUNCIONARIOS;
DROP TABLE TB_FUNCIONARIOS;

--INSERINDO DADOS NA TABELA FUNCIONARIOS --
INSERT INTO TB_FUNCIONARIOS 
  VALUES( 1,'La�s Ingrid','F',21,1500 );


--INICIO Cria��o de sequence --
CREATE SEQUENCE SEQ_TEST--sej� o que eu fizer, ela continuar� contando
  INCREMENT BY 1       --sera adicionado de um � um
  START WITH 1         -- inicie de 0 pois ele conta 0+1 ai consegue come�ar do numero 1
  MINVALUE 1
  MAXVALUE 9999
  NOCACHE
;
--FIM Cria��o de sequence --


--INICIO Cria��o de Trigger --
CREATE OR REPLACE TRIGGER TRIG_TESTE_1
  BEFORE
    INSERT OR UPDATE
    ON TB_FUNCIONARIO for EACH ROW
    BEGIN

      :new.COD_FUNCIONARIO := SEQ_TEST.NEXTVAL;
      
      IF (INSERTING) THEN
        :new.nome_funcionario := UPPER( :new.nome_funcionario );
      ELSE IF (UPDATING) THEN
        :new.sexo_funcionario := UPPER( :new.sexo_funcionario );
        
      END IF;
      END IF;
END;
--FIM Cria��o de Trigger --


UPDATE INTO TB_FUNCINARIOS
SET NOME = 'La�s Ingrid' WHERE COD_ATLETA = 1;


/*

-- cria��o de trigger --
create or replace trigger trig_teste
  before-- aconte�a antes de ...
  insert or update --inserir e/ou atualizar
  on atleta for EACH ROW--acontecendo na tabela de atleta de linha � linha
  begin

    if (INSERTING) THEN-- se eu fizer uma inser��o fa�a
      :new.cod_atleta := seq_1.NEXTVAL;
      --� cada novo dado do codigo de atleta acrescente � ele o numero da 
      --sequence+proximo da mesma.
     :new.JOB   := UPPER(:new.JOB); 
    ELSE IF (UPDATING) THEN-- se eu fizer uma atualiza��o na tabela atleta fa�a
      :new.nome := UPPER(:new.NOME);
      --� cada novo registro do campo nome, maxsiminize as letras para caixa alta.
    END IF;--(UPDATING)
    end if;--(INSERTING)

end;--trigger trig_test
*/










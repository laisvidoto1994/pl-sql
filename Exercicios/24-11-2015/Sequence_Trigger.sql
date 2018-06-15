/*
1 - criar uma seguence
2 - utilizar a sequece para usar no comando de insert para atribuir o valor
incrementado pela sequence no campo de c�digo / pk.
3 - utilizar a sequence dentro de uma trigger de banco para quando inserir um
registro em uma determinada tabela o campo de c�digo seja gerado automaticamente.
*/

--CREATE SEQUENCE TREINAMENTO.sequence1 ;--s� ser� possivel ser

CREATE SEQUENCE SEQUENCE_1 --CRIANDO UMA SEQUENCE
  MINVALUE 1 
  MAXVALUE 9999999 
  START WITH 1 
  INCREMENT BY 1 
  NOCACHE;
  
  DROP SEQUENCE SEQUENCE_1; -- EXCLUIR UMA SEQUENCE
---------------------------------------------------------------------------------  
  SELECT SEQUENCE_1.NEXTVAL FROM EMP;-- MOSTRA NA ORDEM NO QUAL ELES FORAM CRIADOS.
  SELECT SEQUENCE_1.CURRVAL FROM EMP;-- MOSTRA O ULTIMO NUMERO INSERIDO.
---------------------------------------------------------------------------------

CREATE OR REPLACE TRIGGER TRG_SAL_EMP 
BEFORE
  INSERT OR
  UPDATE OR
  DELETE ON EMP FOR EACH ROW 
  
  BEGIN
  
  IF (INSERTING) THEN 
    :new.sal := :new.sal + 1;--ao inserir um novo registro, ele ira soma + 1 ao salario.
  -- comando UPPER for�a os caracteres em min�sculo para mai�sculo
    :new.ENAME := UPPER(:new.ENAME);--compara��o do antigo com o novo
    
  
  SELECT SEQUENCE_1.NEXTVAL
  FROM emp;
  
elsif (UPDATING) THEN
  :new.hiredate := sysdate;--ao atualizar qualquer dado, ele recebera � data de hoje.
  --:new.hiredate := sysdate;--o dado novo do campo 'hiredate' recebera � data atual.
END IF;
END;

SELECT empno.sequence1 FROM emp;

  ---------------------------------------------------------------------------------
/*
-- cria��o se sequence --
CREATE SEQUENCE SEQ_1-- sej� o que eu fizer, ela continuar� contando
INCREMENT BY 1       --sera adicionado de um � um
START WITH 0         -- inicie de 0 pois ele conta 0+1 ai consegue come�ar do numero 1
MINVALUE 1
MAXVALUE 9999
NOCACHE
;



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



UPDATE Atleta
SET NOME = 'dandan' WHERE COD_ATLETA = 5;
--gatilho
*/
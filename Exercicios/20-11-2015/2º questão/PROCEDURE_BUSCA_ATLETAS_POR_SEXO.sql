/*
2) Questao: Cursor com parametro
Adicionar uma coluna SEXO VARCHAR(1) na tabela Atleta, e fazer uma procedure que 
tem um cursor que recebe como parametro o sexo do atleta e imprime todos os
atletas com aquele sexo passado como parametro. 
*/

SELECT * FROM ATLETA;
--------------------------------------------------------------------------------  
ALTER TABLE ATLETA  
    ADD SEXO VARCHAR(1);

--------------------------------------------------------------------------------  
UPDATE ATLETA 
    SET SEXO = 'F' 
    WHERE COD_ATLETA = 1 ;  
  
UPDATE ATLETA 
    SET SEXO = 'M' 
    WHERE COD_ATLETA IN (2,3) ;  
  
--------------------------------------------------------------------------------  

  
CREATE OR REPLACE PROCEDURE PROCEDURE_BUSCA_ATLETAS_SEXO(
                                                           P_SEXO IN ATLETA.SEXO%TYPE
                                                        )
  AS
    CURSOR CUR_ATLETA( P_CUR_ATLETA_SEXO IN ATLETA.SEXO%TYPE ) 
    IS
      SELECT *
        FROM ATLETA
        WHERE SEXO = P_CUR_ATLETA_SEXO;
        
      T_ATLETA ATLETA%ROWTYPE;
      
    BEGIN
    
     OPEN CUR_ATLETA( P_SEXO );-- separa o espaço de memoria do CURSOR
     
     LOOP
       FETCH CUR_ATLETA INTO T_ATLETA;
         EXIT WHEN CUR_ATLETA%NOTFOUND;-- va fazendo até o ultimo registro ou ele seja = null
         
             DBMS_OUTPUT.PUT_LINE( T_ATLETA.NOME );-- separador de dados->  ||' '|| 

     END LOOP;
     
     CLOSE CUR_ATLETA;-- libera o espaço de memoria do CURSOR

    END;
  
END PROCEDURE_BUSCA_ATLETAS_SEXO;

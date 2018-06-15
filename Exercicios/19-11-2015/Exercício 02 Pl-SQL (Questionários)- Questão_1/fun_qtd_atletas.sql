/*
Arquivo-> Exercício 02 Pl-SQL (Questionários)
(FUNCTION) Faça uma função que recebe o nome do esporte e retorna a quantidade
de atletas que praticam esse esporte.
*/
CREATE OR REPLACE FUNCTION fun_qtd_atletas(
                                            p_nome IN ESPORTE.NOME%TYPE 
                                          )
  RETURN ESPORTE.QTD%TYPE
IS-- pode ser 'is' or 'as' tanto faz
  v_qtd ESPORTE.QTD%TYPE;
  
BEGIN

  SELECT QTD 
    INTO V_QTD 
    FROM ESPORTE 
    WHERE NOME = P_NOME;
    
  DBMS_OUTPUT.PUT_LINE( v_qtd );
  
  RETURN(v_qtd );
  
END;
/*
(LOOP) Suponhamos a existência de uma tabela (RESULTADO) com o layout ( VALOR N (30), ORDEM N(5) ).
Deseja-se preenchê-la a partir da tabela funcionário, com a matrícula do funcionário (ordem)
e a expressão trunc(nr_git*vl_sal/nr_cargo) na coluna valor.
*/
CREATE TABLE RESULTADO
  ( 
       VALOR NUMBER(30) 
      ,ORDEM NUMBER(5)
  );

DECLARE
 --SÓ PEGAM O TIPO DO CAMPO DA TABELA, É UMA VARIAVEL QUE SÓ ACEITA 1 DADO.
  CALC        EMP.SAL%TYPE;   --calculo do SALARIO
  MATRICULA   EMP.EMPNO%TYPE; --CODIGO 
  VL_SAL      EMP.SAL%TYPE;   --SALARIO
  
  NR_CARGO    NUMBER := 2;
  CONTADOR    INTEGER:= 1;
  NR_GIT      NUMBER := 200;
BEGIN
  LOOP
    SELECT EMPNO 
          ,SAL 
        INTO MATRICULA --CODIGO
            ,VL_SAL    --calculo do SALARIO
        FROM EMP 
        WHERE SAL = 800;
        
    CALC := TRUNC( NR_GIT * VL_SAL / NR_CARGO );--TRUNC serve para arrendondar o valor para inteiro
    
  INSERT INTO RESULTADO(VALOR,ORDEM) 
    VALUES( CALC, MATRICULA);
    
    DBMS_OUTPUT.PUT_LINE(CONTADOR);

      EXIT;
    
  END LOOP;
END;


select * from resultado;

DROP TABLE RESULTADO;
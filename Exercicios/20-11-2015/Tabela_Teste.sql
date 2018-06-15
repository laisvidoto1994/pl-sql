/*
DECLARE
p_str_constante_id tb_constante.str_constante_id%type ; --%type-> pega o tipo da tabela-campo
--variavel Varchar(10);
--variavel Varchar2(10) := 'Halysson';
BEGIN
select SQ_MODELO_DOCUMENTO.NEXTVAL 
  INTO p_int_modelo_id
  FROM DUAL; 

END;

*/
--declare/*declaração de variaveis*/

  --variavel Varchar2(20);

--begin/*declaração para o pl/sql*/

  --variavel := 'Halysson';

--end; 

--v_enderreco vendedor.DS_ENDERRECO%TYPE;/*guarda o tipo do dado do enderreço do vendedor*/
--v_vendedor vendedor%ROWTYPE;/*pega uma linha especifica da tabela*/

/*VARIABLE var_sal NUMBER(10);

BEGIN
	:var_sal := 100;
END;*/



--DECLARE

--variavel funcionario.nome%type;

--begin

--select nome into variavel from funcionario where nome = 'Daniel';

--dbms_output.put_line(variavel);

--end; 


/*EXEMPLO DE CHECK:- */
/*SEXO VARCHAR(1) CHECK (SEXO = 'M' OR SEXO = 'F') - */








--maior salario e o nome do funcionario

SELECT MAX(SAL) FROM EMP;            --> função que retorna o maior salario
SELECT MIN(SAL) FROM EMP;            --> função que retorna o menor salario
SELECT SUM(SAL) FROM EMP;            --> função que retorna á soma
SELECT AVG(SAL) FROM EMP;            --> mostra á media dos salarios
SELECT COUNT(SAL) FROM EMP;          --> qtd de registros da tabela
SELECT NVL(sal,0) FROM EMP;          --> verifica se o campo esta nulo,se retornar nulo mostre o 0.
SELECT UPPER('Halysson') FROM DUAL;  --> DEIXA Á STRING EM CAIXA ALTA OU MAIUSCULA
SELECT LOWER('Halysson') FROM DUAL ; --> DEIXA Á STRING EM CAIXA BAIXA OU MENUSCULA


--mostre o nome do funcionario com o maior salario
SELECT ENAME,SAL 
  FROM EMP
  WHERE SAL = ( 
                SELECT MAX(SAL) 
                  FROM EMP
               );
              
--mostre o nome do funcionario com o maior salario
SELECT MAX(SAL), ENAME
  FROM EMP
  WHERE SAL = (
                SELECT MAX(SAL) 
                  FROM EMP
              )
  GROUP BY ENAME ; 
  

--
SELECT ENAME, SAL 
  FROM EMP
  GROUP BY SAL,ENAME
  ORDER BY SAL;
  
--
  /*
Select distinct cargo.descricao 
  from demo_orders,demo_order_items
  where funcionario.cod_cargo = cargo.cod_cargo;
  
  */






























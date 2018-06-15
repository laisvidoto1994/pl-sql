/*
0. (CURSOR, PROCEDURE, FUNCTION) Problema Proposto: Deseja-se calcular e emitir
a folha de pagamento de uma empresa para todos os funcion�rios(Tabela FUNC). Em 
fun��o da necessidade de se emitir v�rios relat�rios sobre o c�lculo efetuado, 
ser� gerada uma tabela intermedi�ria com os resultados para posterior impress�o
( Tabela FOLHA [cd_mat, vl_sal, vl_ir, vl_inss, vl_fgts] ). 
*val_ir = valor do imposto de renda

1) criar uma procedure para calcular o valor do imposto de renda que rebebe como
parametro de entrada o salario do func e como parametro de saida o valor do 
imposto de renda calculado.

2) criar uma function para calcular o valor do inss que recebe como parametros 
o valor do salario do funcionario e o valor limite do Teto m�ximo do inss -> 
ex:3000). Em seguida deve-se inserir um registro na tabela de Folha com os dados 
calculados para cada funcionario. 

*/
CREATE OR REPLACE FUNCTION FUNCAO_CAL_FOLHA(
                                             P_SALARIO     IN  TB_FUNCIONARIO.SALARIO%TYPE ,
                                             P_LIMITE_INSS IN NUMBER
                                            )
RETURN NUMBER

IS
  
   P_LIMITE_INSS numeric(7,2);
  
  BEGIN
  
  P_LIMITE_INSS:= p_salario * 0.8;

  if  P_LIMITE_INSS >= P_LIMITE_INSS then
     P_LIMITE_INSS := P_LIMITE_INSS; 
  end if;
  
  
  DBMS_OUTPUT.PUT_LINE(  P_LIMITE_INSS );
  
  return P_LIMITE_INSS ;

END FUNCAO_CAL_FOLHA;
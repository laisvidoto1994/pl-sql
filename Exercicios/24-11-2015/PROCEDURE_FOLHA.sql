/*
0. (CURSOR, PROCEDURE, FUNCTION) Problema Proposto: Deseja-se calcular e emitir
a folha de pagamento de uma empresa para todos os funcionários(Tabela FUNC). Em 
função da necessidade de se emitir vários relatórios sobre o cálculo efetuado, 
será gerada uma tabela intermediária com os resultados para posterior impressão
( Tabela FOLHA [cd_mat, vl_sal, vl_ir, vl_inss, vl_fgts] ). 
*val_ir = valor do imposto de renda

1) criar uma procedure para calcular o valor do imposto de renda que rebebe como
parametro de entrada o salario do func e como parametro de saida o valor do 
imposto de renda calculado.

2) criar uma function para calcular o valor do inss que recebe como parametros 
o valor do salario do funcionario e o valor limite do Teto máximo do inss -> 
ex:3000). Em seguida deve-se inserir um registro na tabela de Folha com os dados 
calculados para cada funcionario. 

*/
CREATE OR REPLACE PROCEDURE PROCEDURE_FOLHA(
                                               P_SALARIO      IN  NUMBER ,
                                               P_IR_CALCULADA OUT NUMBER
                                            )
IS

BEGIN

    IF  p_SALARIO <= 300.00 THEN
      P_IR_CALCULADA := 0; 
    ELSE IF p_SALARIO BETWEEN 300.01 AND  1000.00  THEN
      P_IR_CALCULADA := P_SALARIO * 0.1 ;
    ELSE IF p_SALARIO BETWEEN 1000.01 AND  3000.00  THEN
      P_IR_CALCULADA := P_SALARIO * 0.2 ;
    ELSE
      P_IR_CALCULADA := P_SALARIO * 0.3 ;
    END IF;
    
    DBMS_OUTPUT.PUT_LINE( P_IR_CALCULADA );


end PROCEDURE_FOLHA;
/*
1. (CURSOR, PROCEDURE, FUNCTION) Problema Proposto: Deseja-se calcular e emitir
a folha de pagamento de uma empresa para todos os funcionários(Tabela FUNC). Em 
função da necessidade de se emitir vários relatórios sobre o cálculo efetuado, 
será gerada uma tabela intermediária com os resultados para posterior impressão
(Tabela FOLHA[cd_mat, vl_sal, vl_ir, vl_inss, vl_fgts]). 

*val_ir = valor do imposto de renda

1) criar uma procedure para calcular o valor do imposto de renda que rebebe como parametro de entrada o salario do func e como parametro de saida o valor do imposto de renda calculado.

2) criar uma function para calcular o valor do inss que recebe como parametros o valor do salario do funcionario e o valor limite do Teto máximo do inss -> ex:3000). Em seguida deve-se inserir um registro na tabela de Folha com os dados calculados para cada funcionario. 

*/


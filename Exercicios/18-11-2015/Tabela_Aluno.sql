/*
2. Criar uma procedure que receber� um RA, um NOME e quatro notas conforme a 
sequ�ncia: (RA,NOME,A1,A2,A3,A4).
 A partir destes valores dever� efetuar o c�lculo da m�dia somando o maior 
 valor entre A1 e A2 �s notas A3 e A4 e dividindo o valor obtido por tr�s 
 (achando a m�dia). Se a m�dia for menor que 6 (seis) o aluno estar� 
 REPROVADO e se a m�dia for igual ou superior a 6 (seis) o aluno estar� APROVADO.
 A procedure dever� inserir os valores acima numa tabela denominada ALUNO com 
 as seguintes colunas RA,NOME,A1,A2,A3,A4,MEDIA,RESULTADO.

*/

CREATE TABLE ALUNO 
(
    RA        NUMBER(9),
    NOME      VARCHAR2(30),
    NOTA1     NUMBER(3,1),
    NOTA2     NUMBER(3,1),
    NOTA3     NUMBER(3,1),
    NOTA4     NUMBER(3,1),
    MEDIA     NUMBER(3,1),
    RESULTADO VARCHAR2(15),
    CONSTRAINT CONS_ALUNO primary key(RA)
) ;


SELECT * FROM ALUNO;

begin
 ALUNO_PROCEDURE(01,'lais ingrid',5.5 ,3.0 ,10.0, 5.5);
end;

  
  drop table aluno;
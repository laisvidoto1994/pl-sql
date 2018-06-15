/*
2. Criar uma procedure que receberá um RA, um NOME e quatro notas conforme a 
sequência: (RA,NOME,A1,A2,A3,A4).
 A partir destes valores deverá efetuar o cálculo da média somando o maior 
 valor entre A1 e A2 às notas A3 e A4 e dividindo o valor obtido por três 
 (achando a média). Se a média for menor que 6 (seis) o aluno estará 
 REPROVADO e se a média for igual ou superior a 6 (seis) o aluno estará APROVADO.
 A procedure deverá inserir os valores acima numa tabela denominada ALUNO com 
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
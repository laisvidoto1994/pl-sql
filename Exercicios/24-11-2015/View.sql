-- VIEW serve apenas para consulta de dados
-- VIEW � para apenas n�o ter que escrever denovo o select
-- ele � um facilitador para � consulta.
CREATE OR REPLACE VIEW VIEW_EMPREGADO
AS
  SELECT  empregado.ENAME
         ,empregado.JOB
         ,departamento.DNAME
    FROM emp empregado                          --apelidando � tabela EMP
    INNER JOIN DEPT departamento                --apelidando � tabela DEPT
    ON empregado.DEPTNO = departamento.DEPTNO ;



SELECT*FROM VIEW_EMPREGADO;--visualizar os dados da VIEW
--mostra do mesmo jeito que o select com inner join das tabelas � cima!
--� apenas para n�o ter que ficar fazendo varios select's com os mesmos campos varias vezes.
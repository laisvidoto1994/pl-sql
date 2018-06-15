-- VIEW serve apenas para consulta de dados
-- VIEW é para apenas não ter que escrever denovo o select
-- ele é um facilitador para á consulta.
CREATE OR REPLACE VIEW VIEW_EMPREGADO
AS
  SELECT  empregado.ENAME
         ,empregado.JOB
         ,departamento.DNAME
    FROM emp empregado                          --apelidando á tabela EMP
    INNER JOIN DEPT departamento                --apelidando á tabela DEPT
    ON empregado.DEPTNO = departamento.DEPTNO ;



SELECT*FROM VIEW_EMPREGADO;--visualizar os dados da VIEW
--mostra do mesmo jeito que o select com inner join das tabelas á cima!
--é apenas para não ter que ficar fazendo varios select's com os mesmos campos varias vezes.
DECLARE
    my_empno Number(7) := &mempno;--cursor explicito

BEGIN
   DELETE FROM emp 
      WHERE empno = my_empno; 

   IF SQL%FOUND THEN --–na instrução acima teve alguma linha afetada, nesse caso se verdade ele conseguiu excluir á linha

	INSERT INTO new_emp 
	VALUES
	             (      
                     my_empno
	                  ,my_ename
               ); 
   END IF;
END;
----------------------------------------------------------------------------------
DECLARE
    my_empno Number(7) := &mempno;--abre um prompt de comando para passar o valor da mesma

BEGIN
   DELETE FROM emp 
   WHERE empno = my_empno; 

   IF SQL%FOUND THEN --na instrução acima teve alguma linha afetada, nesse caso se verdade ele conseguiu excluir á linha

	INSERT INTO new_emp 
	VALUES
	             (      
                                    my_empno
	                   ,my_ename
                             ); 
   END IF;
END;
---------------------------------------------
DECLARE
   v_eno      emp.empno%TYPE := &vno;
   v_ename emp.ename%TYPE;

CURSOR e_cursor( p_eno number )
   IS
    ( SELECT empno, ename
          FROM  emp
          WHERE empno = p_eno);

BEGIN

   OPEN e_cursor(v_eno);--abre o cursor
   FETCH e_cursor into v_eno,v_ename;-- pegou á linha do cursor e pos nas linhas abaixo

   DBMS_OUTPUT.PUT_LINE('Hello  ' || v_eno);
   DBMS_OUTPUT.PUT_LINE('Emp Name is ' || v_ename);

   CLOSE e_cursor;--fechar cursor

END;


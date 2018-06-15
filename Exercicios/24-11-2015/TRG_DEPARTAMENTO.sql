CREATE OR REPLACE TRIGGER TRG_DEPARTAMENTO
BEFORE -- faz � A��O antes de..

  INSERT OR
  UPDATE OR
  DELETE ON DEPT FOR EACH ROW BEGIN
    
   :new.DNAME := UPPER(:new.DNAME); -- O comando UPPER for�a os caracteres em min�sculo para mai�sculo
  
  -- Faremos aqui uma valida��o do momento da chamada da trigger
  IF (INSERTING) THEN
    :new.DEPTNO;
  elsif (UPDATING) then 
    :old.DEPTNO;
  ELSE
    :old.DEPTNO;
  END IF;
END;


---------------------------------------------------------------------------------

/*
CREATE OR REPLACE TRIGGER TRG_DEPARTAMENTO
AFTER -- faz � A��O depois DE..

  INSERT OR
  UPDATE OR
  DELETE ON DEPT FOR EACH ROW BEGIN
    
    :new.DNAME := UPPER(:new.DNAME); -- O comando UPPER for�a os caracteres em min�sculo para mai�sculo
  
  -- Faremos aqui uma valida��o do momento da chamada da trigger
  IF (INSERTING) THEN
       :new.DEPTNO;
  elsif (UPDATING) then 
       :old.DEPTNO;
  ELSE
       :old.DEPTNO;
  END IF;
END;

*/
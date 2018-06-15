CREATE OR REPLACE PACKAGE BODY c_package
AS
  PROCEDURE addTeam(  t_id team.id%type,
                      t_name team.name%type,
                      t_atletas team.atleta%type,
    IS
    
    BEGIN
      INSERT INTO team(id,name,atleta)
        VALUES(t_id, t_name, t_atletas);
    END addTeam;
    /*=================================================*/ 
    PROCEDURE listTeam
    IS
      CURSOR t_team
      IS
        SELECT name FROM team;
    TYPE c_list
  IS
    TABLE OF team.name%type;
    name_list c_list := c_list();
    counter INTEGER  :=0;
 
  BEGIN
    FOR n IN t_team
    LOOP
      counter := counter +1;
      name_list.extend;
      name_list(counter) := n.name;
      dbms_output.put_line('Equipe(' ||counter|| ')'||name_list(counter));
    END LOOP;
END listTeam;
END c_package;

DECLARE
  code team.id%type:= 8;
BEGIN
  c_package.addTeam(1, 'Josh', 20);
  c_package.addTeam(2, 'Micheil', 45);
  c_package.listTeam;
END;
/*=================================================*/

  PROCEDURE listTeam
  IS
    CURSOR t_team
    IS
      SELECT name FROM team;
  TYPE c_list
IS
  TABLE OF team.name%type;
  name_list c_list := c_list();
  counter INTEGER := 0;
  
BEGIN
  FOR n IN t_team
   LOOP
      counter := counter +1;
      name_list.extend;
      name_list(counter) := n.name;
      dbms_output.put_line('Equipe(' ||counter|| ')'||name_list(counter));
    END LOOP;
  END listTeam;
END c_package;

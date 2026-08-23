set serveroutput on
set verify off
set feedback off

declare
    v_id EMP.EID%type;
    v_result varchar2(20);

begin
    v_id := &EID;

    v_result := get_age_group(v_id);

    dbms_output.put_line(v_id);
    dbms_output.put_line(v_result);

end;
/

set serveroutput off
set verify on
set feedback on
create or replace function get_age_group(p_id in number)
return varchar2
is
    v_group varchar2(20);
    v_emp_age EMP.AGE%type;

begin

    select AGE
    into v_emp_age
    from EMP
    where EID = p_id;

    if v_emp_age < 18 then
        v_group := 'minor';

    elsif v_emp_age < 60 then
        v_group := 'adult';

    else
        v_group := 'senior';

    end if;

    return v_group;

exception
    when no_data_found then
        return 'employee not found';

    when others then
        return 'error';

end;
/

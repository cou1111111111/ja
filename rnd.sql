create or replace function cal_area ( radius number)
return number is 
pi constant number(7,3) := 3.141;
area number (7,3);

begin 
    area := pi * (radius * radius);
    return area;
end;
/

create or replace procedure dets is 
    var_name varchar(20):= 'huss';
    var_code varchar(20) := 'huss_1';
begin 
    DBMS_OUTPUT.put_line('i am ' || var_name || ' with id: ' || var_code);
end dets;
/
exec dets;
execute dets;
/
begin
    dets;
end;
/

create or replace procedure emp_sal (dep_id number, sal_raise number)
is 
begin 
    update employees set salary = salary * sal_raise where department_id = dep_id;
end;
/
begin
    emp_sal(100,10);
end;
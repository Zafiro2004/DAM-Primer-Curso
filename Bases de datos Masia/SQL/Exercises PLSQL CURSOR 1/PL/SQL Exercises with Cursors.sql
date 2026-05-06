-- 1
create table STAFF_PERCENTAGE
(
    Emp_num     int primary key,
    Total       NUMBER,
    Accumulated NUMBER
);

create or replace procedure actStaff as
    cursor emp_cur is
        select EMPLOYEE_CODE, SALARY
        from STAFF;

    v_total_salarios number := 0;
    accumulated number := 0;
    percentage number := 0;

    emp_rec emp_cur%rowtype;
begin
    select sum(SALARY) into v_total_salarios
    from STAFF;

    open emp_cur;

    loop
        fetch emp_cur into emp_rec;
        exit when emp_cur%NOTFOUND;

        percentage := round((emp_rec.SALARY / v_total_salarios) * 100);
        accumulated := accumulated + percentage;

        insert into STAFF_PERCENTAGE (Emp_num, Total, Accumulated)
        values (emp_rec.EMPLOYEE_CODE, percentage, accumulated);
    end loop;

    close emp_cur;
    commit;
end;

begin
    actStaff;
end;

-- 2
create or replace procedure actTAX(p_reference in LANDREGISTRY.REFERENCE%type,
                                   new_rate in LANDREGISTRY.TAX_RATE%type) as
    cursor ref_cur is
        select REFERENCE from LANDREGISTRY FOR UPDATE;

    ref_rec ref_cur%rowtype;
    v_found boolean := FALSE;

begin
    IF new_rate <= 0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'ERROR: The tax rate is invalid. It must be greater than 0.');
    END IF;

    open ref_cur;
    loop
        fetch ref_cur into ref_rec;
        exit when ref_cur%notfound;

        if p_reference = ref_rec.REFERENCE then
            update LANDREGISTRY set TAX_RATE=new_rate where current of ref_cur;
            DBMS_OUTPUT.PUT_LINE('Rate successfully updated');

            v_found := TRUE;
            exit;
        end if;
    end loop;
    close ref_cur;

    IF v_found = FALSE THEN
        DBMS_OUTPUT.PUT_LINE('Action taken: Property reference not found in the registry.');
    END IF;
    commit;
end;
/
begin
    actTAX(966,3);
end;

-- 3
create table department_staff(
    department_code number(38),
    employee_name varchar2(50)
);

-- 3
create or replace procedure addDptStaff(d_code in STAFF.DEPARTMENT_CODE%type) as
    v_count number;

    cursor dpt_cur is
        select DEPARTMENT_CODE, NAME
        from STAFF
        where DEPARTMENT_CODE = d_code;

    dpt_rec dpt_cur%rowtype;

begin
    select count(*) into v_count
    from STAFF
    where DEPARTMENT_CODE = d_code;

    if v_count = 0 then
        DBMS_OUTPUT.PUT_LINE('The department with that code does not exist');
        RETURN;
    end if;


    open dpt_cur;
    loop
        fetch dpt_cur into dpt_rec;
        exit when dpt_cur%notfound;


        insert into DEPARTMENT_STAFF (department_code, employee_name)
        values (dpt_rec.DEPARTMENT_CODE, dpt_rec.NAME);
    end loop;

    close dpt_cur;
    commit;
end;
/
begin
    addDptStaff(5);
end;

-- 4
create table CITIZEN_PROPERTIES(
    reference number(3),
    street varchar2(20),
    str_number number(4)
);

create or replace procedure getCitizenProperties(c_citizen in TAXPAYER.COD_PAYER%type) as
    v_count number;

    cursor pay_cur is
        select REFERENCE, STREET, STR_NUMBER
        from LANDREGISTRY, ESTATE_OWNER
        where REFERENCE = ESTATE and c_citizen = PAYER;

    pay_rec pay_cur%rowtype;

begin
    select count(*) into v_count
    from LANDREGISTRY, ESTATE_OWNER
    where REFERENCE = ESTATE and c_citizen = PAYER;

    if v_count = 0 then
        DBMS_OUTPUT.PUT_LINE('No properties found for this citizen, or citizen does not exist.');
        RETURN;
    end if;

    DBMS_OUTPUT.PUT_LINE('==================================================');
    DBMS_OUTPUT.PUT_LINE('   PROPERTY INSERTION REPORT FOR CITIZEN: ' || c_citizen);
    DBMS_OUTPUT.PUT_LINE('==================================================');

    open pay_cur;

    loop
        fetch pay_cur into pay_rec;
        exit when pay_cur%notfound;

        insert into CITIZEN_PROPERTIES values (pay_rec.REFERENCE, pay_rec.STREET, pay_rec.STR_NUMBER);

        DBMS_OUTPUT.PUT_LINE(' -> Inserted: Reference ' || pay_rec.REFERENCE ||
                             ' | Address: ' || pay_rec.STREET || ' ' || pay_rec.STR_NUMBER);

    end loop;
    close pay_cur;
    commit;

    DBMS_OUTPUT.PUT_LINE('==================================================');
    DBMS_OUTPUT.PUT_LINE('Total properties successfully processed: ' || v_count);
    DBMS_OUTPUT.PUT_LINE('==================================================');
end;
/
begin
    getCitizenProperties('A368');
end;

-- 4

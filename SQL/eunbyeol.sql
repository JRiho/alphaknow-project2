CREATE TABLE employee (
	employee_key	NUMBER		primary key,
	employee_name	VARCHAR2(100)		NULL,
	employee_pnone	VARCHAR2(100)		NULL,
	employee_date	DATE		NULL,
	department_code	NUMBER		NULL,
	job_grade	VARCHAR2(100)		NULL,
	employee_id	VARCHAR2(100)		NULL,
	employee_pw	VARCHAR2(100)		NULL,
	manager_phon	VARCHAR2(100)		NULL
);

select 
    *
    from employee;
    
alter table employee
 add employment_status VARCHAR2(20);
 
 select 
    *
    from employee;
    
desc employee;

insert into employee 
values(1111,'사원이름','010-3999','2024-03-02',1111,'부장','bgr','123','010-5555','재직');

 select 
    *
    from employee;

alter table employee
rename column EMPLOYEE_PNONE to EMPLOYEE_PHONE;

commit;

insert into employee 
values(2222,'sqq','010-3999','2024-03-02',1111,'부장','bgr','123','010-5555','재직');

select
    *
    from employee
    where employee_name = '사원이름';
select
    *
    from employee;
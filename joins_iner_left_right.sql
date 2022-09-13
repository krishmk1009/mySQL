CREATE database COMPANY;
USE COMPANY;
SHOW TABLES;

	CREATE TABLE employee_details(
	emp_id VARCHAR(8),
	emp_name VARCHAR(20),
	emp_dept_id VARCHAR(20),
	emp_age INT);
	show tables;


	INSERT INTO employee_details VALUES
	('E40004','SANTHOSH','2',250000),
	('E40005','THAMAN','3',2600),
	('E40006','HARSH','1',25000),
	('E40007','SAMHITH','1',260000)

	;

	INSERT INTO employee_details VALUES
	('E40008','KRUSHNA','10',21),
	('E40009','SHRADDHA','10',19);
	ALTER TABLE employee_details
	ADD PRIMARY KEY (emp_id);
  
	SELECT * FROM employee_details;
  
	CREATE TABLE department_details(
	dept_id int,
	dept_name varchar(30)
  );
  
	INSERT INTO department_details VALUES
	('2' , 'Technical'),
	('3' , 'Management'),
	('1' , 'Finance'),
	('1' , 'Marketting');
    
    
	SELECT * FROM department_details;
    
    -- FETCH THE EMP NAME AND DEPARTMENT NAME FROM BOTH THE TABLE; 
		SELECT e.emp_name , d.dept_name
		from employee_details as e 
		JOIN department_details as d
		on e.emp_dept_id = d.dept_id;
    
    
    -- PRACCTICE
		SELECT d.dept_name 
		FROM employee_details as e
		Join department_details as d
		on e.emp_age=260;
    
    -- FETCH THE ALL EMP NAME AND THEIR DEPARTMENT NAME BELONG TO
    
		SELECT e.emp_name , d.dept_name
		from employee_details as e 
		LEFT JOIN department_details as d
		on e.emp_dept_id = d.dept_id;
    -- LEFT JOIN = INNER JOIN + ANY ADDITONAL RECORD IN THE LEFT TABLE;
    
    
    -- NEW PROJECT TABLE FOR EMPLOYEE AND DEPARTMENT;
    
    CREATE TABLE project_details(
    project_id INT,
    project_name varchar(20),
    emp_id varchar(8),
    dept_id INT
    );
    
    
    INSERT INTO project_details VALUES
    ('1' ,'software ' , 'E40008' , '10' ),
    ('2' ,'web3 ' , 'E40004' , '2' ),
    ('3' ,'seg3 ' , 'E40005' , '3' ),
    ('4' ,'data driven' , 'E40008' , '10' );
    SELECT * FROM project_details;
    
 -- fetch the data and get the all employee name and ,  their project name;
 SELECT e.emp_name , p.project_name
 FROM employee_details as e 
 left JOIN project_details as p 
 on e.emp_dept_id = p.dept_id;
 
 -- fetch all emp_name , dept_name , project_name and project_id 
 SELECT e.emp_name , d.dept_name , p.project_name , p.project_id   
 FROM employee_details as e
 left Join department_details as d on e.emp_dept_id = d.dept_id    -- upto this line , query will generate one table.
 left join project_details as p on e.emp_id = p.emp_id;
    

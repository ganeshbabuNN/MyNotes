/*Structured Query Language..*/
/**/
/*SQL is one of the many languages built into the SAS® System. Using PROC SQL, the SAS user has access to a*/
/*powerful data manipulation and query tool. This procedure begins with the*/
/*declaration PROC SQL; and ends with a QUIT;*/
/*statement (not RUN;). In between these two*/
/*declarations SQL code may be used. SQL code*/
/*obeys the rules of the SAS system regarding*/
/*maximum lengths of variable names, reserved words,*/
/*and the use of the semi colon as the line delimiter.*/
/*The simplest and most commonly used SQL*/
/*statement is SELECT, which is used to extract data*/
/*from a table.*/

data employee;
    input emp_id name $ age sex $ salary;
     cards;
          123 Vineeth 27 m 3000
          124 Vinod 29 m 4000
          125 Shami 25 f 6000
          126 Remya 29 f 5000
          127 Nisha 32 f 2000
          128 Nishanth 45 m 7000
          129 Shruthi 23 f 1800
          ;
          run;

		  proc print data= employee;
		  run;
proc sql;
select*from employee;
quit;
proc sql;
select name,salary from employee;
quit;

/*(The ‘*’ means select all of the variables in the table.*/
/*By default the data selected is printed to the SAS*/
/*output window or file.)*/


proc sql;
select*from employee where salary > 5000;
quit;
proc sql;
select*from employee where salary < 4000;
quit;

/**/
/*(Just like in a SAS DATA step or any other SAS*/
/*PROCedure the WHERE clause is used subset*/
/*observations by one or more criteria.)*/


proc sql;
select*from employee where name = 'Nisha';
quit;
proc sql;
select*from employee where salary > 5000 and sex = 'm';
quit;


proc sql;
select*from employee where salary between 2000 and  5000;
quit;

/**/
/*  SELECT     columns (variables) that you want*/
/*• FROM       tables (datasets) that you want*/
/*• ON join conditions that must be met*/
/*• WHERE row (observation) conditions that must be met*/
/*• GROUP BY summarize by these columns*/
/*• HAVING summary conditions that must be met*/
/*• ORDER BY sort by these columns*/
/**/


proc sql;
select*from employee where salary >=2000 and salary<=5000;
quit;


proc sql;
select*from employee where salary between 2000 and  5000 order by salary desc;
quit;



/*How to insert new record using SQL*/

proc sql;
insert into employee values (130,'vineetha',23,'f',9000);
quit;


proc sql;
insert into employee (emp_id, name)values (131,'anil');
quit;



proc sql;
select*from employee;
quit;


/*. in the numeric coloumn*/
/*blank in the charecter column*/


/*LIKE statement in proc sql*/

proc sql;
select * from employee where name like 'N%';
quit;

proc sql;
select * from employee where name like '%h';
quit;

proc sql;
select * from employee where name like '%i%';
quit;
 

/*JOIN...*/


data employee;
input emp_id name $ age sex $ salary;
cards;
123 Vineeth 27 m 3000
124 Vinod 29 m 4000
125 Shami 25 f 6000
126 Remya 29 f 5000
127 Nisha 32 f 2000
128 Nishanth 45 m 7000
129 Shruthi 23 f 1800
;
run;

data department;
input dep_id name $ emp_id;
datalines;
1000 Vineeth 123
1000 Vinod 124
1001 Shami 125
1001 asha 134
1002 Nisha 127
1002 Nishanth 128
1003 Shruthi 129
1003 hena 130
;
run;
proc sql;
select employee.name, department.dep_id from employee,department
where employee.emp_id = department.emp_id;
quit;
proc sql;
select department.name, department.dep_id from employee full  join department
on  employee.emp_id = department.emp_id;
quit;

proc sql;
create table mm as
select employee.name, department.dep_id from employee right join department
on employee.emp_id = department.emp_id;
quit;


/*CREATING NEW TABLE*/

proc sql;
create table new as
select*from employee;
quit;


proc sql;
create table new(drop=age sex) as
select*from employee;
quit;

/*SUMMARY  using SQL*/

data patient;
input name $ height weight;
datalines;
reena 155 52
maya 148 46
raj 160 65 
riya 100 23
tiya 85 14
tony 123 34
;
run;
proc sql;
create table new2 As
select mean(height)As avg_height,
mean(weight)As avg_wt
from patient;
quit;

data patient_2;
input name $ age sex $ height weight;
datalines;
reena 29 f 155 52
maya 27 f 148 46
raj 36 m 160 65 
riya 13 f 100 23
tiya 10 f 85 14
tony 16 m 123 34
manu 14 m 120 30
saji 48 m 167 79
;
run;
proc sql;
create table new2 As
select  min(age) as youngest,
        max(age) as oldest,
        mean(height)As avg_height,
        mean(weight)As avg_wt
from patient_2;
quit;


proc sql;                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
create table new2 As
select sex,
        min(age) as youngest,
        max(age) as oldest,
        mean(height)As avg_height,
        mean(weight)As avg_wt
from patient_2
group by sex;
quit;

proc sql;
   title 'shortest  Employee of Each Gender';
   select *
      from patient_2
      group by sex
      having height=min(height);
	 quit;

	 
proc sql outobs=3; 
 select name,salary
 from employee;
Quit; 

/*4. Renaming a variable in output */
/* Suppose you want to rename a variable, use the column alias AS option in the PROC SQL statement.*/

proc sql; 
 select name,sex as gender
 from employee;
Quit; 


proc sql; 
 select salary, (salary*0.3) as newsalary
 from employee;
Quit; 



    

















 









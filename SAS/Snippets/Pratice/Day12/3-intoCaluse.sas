data employee;
    input emp_id name $ age sex $ salary;
     cards;
          123 Vineeth 27 m 3000
		  123 haya 77 f 3800
		  123 hayan 87 f 35800
          124 Vinod 29 m 4000
          125 Shami 25 f 6000
          126 Remya 29 f 5000
          127 Nisha 32 f 2000
          128 Nishanth 45 m 7000
          129 Shruthi 23 f 1800
		  ;
		  run;
          
 proc sql;
select count(*)into :sal from employee;
quit;

%put &sal;

proc sql;
select sum(salary)into :sal from employee;
quit; 
%put &sal;
proc sql;
select emp_id, sum(salary) into :sal
from employee 
group by emp_id;
quit; 
%put &sal;

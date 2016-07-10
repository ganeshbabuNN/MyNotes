/*duplicate variable*/

/*
if you use a by statement along with the set statement in a data setp then sas creates 2 atomic variables
first.variable
last.varaible
where variable is in the name of by variables
first variable has the value of one for the first observation and 0 for the rest of the obesevations.
last.variable has a value 1 for the las tin the by variable and 0 for all other observation in the by varibles
*/

data employee;
input id salary;
datalines;
1 67
1 89
1 67
2 30
2 80
3 99
3 88
9 12
1 90
;
run
;

proc sort data=employee;
by id;
run;

data employee_1;
set employee;
by id;
first=first.id;
last=last.id;
run;

proc print data=employee_1;
run;

/*using this v can find out duplicate observation */
/*v can find out unique observations*/

data duplicate;
input id name $ age;
cards;
1 maya 23
2 diya 24
3 hiba 34
4 suda 28
5 minha 26
6 mini 22
;
run
;

data dup1;
set duplicate;
by id;
first = first.id;
last=last.id;
run;

data duplicate_1;
input id name $ age;
cards;
1 maya 23
2 diya 24
3 hiba 34
2 diya 24
1 maya 23
4 suda 28
5 minha 26
1 maya 23
6 mini 22
;
run
;
proc sort data = duplicate_1;
by id;
run;

data single dup;
set duplicate_1;
by id;
if first.id and last.id then output single;
 else output dup;
run;

/*no dup and no dupkey
it is usef with sort procedure.
no dup option checks for and eliminate duplicat obs
nodupkey option checks for and eliminate duplicates values based on the by varaible values.*/

data duplicate_1;
input id name $ age;
cards;
1 maya 23
2 diya 24
3 hiba 34
2 diya 24
1 maya 23
4 suda 28
5 minha 26
1 maya 23
6 mini 22
;
run
;
proc sort data = duplicate_1 output=dp nodup;
by id;
run;

/*no dupkey*/
data duplicate_1;
input id name $ age;
cards;
1 maya 23
2 diya 24
3 hiba 34
2 diya 24
1 maya 23
4 suda 28
5 minha 26
1 maya 23
6 mini 22
;
run
;
proc sort data = duplicate_1 output=dp nodupkey;
by id;
run;

proc sort data = duplicate_1 output=dp nodupkey;
by name;
run;

/*proc mean and summary this gives the descriptive statistics*/

proc print data=Sashelp.Class;
run;

proc means data=sashelp.class;
run;

proc means data=Sashelp.Class;
var age;
run;

proc means data=Sashelp.Class;
var age height;
run;

proc means data=Sashelp.Class mean;
var age height;
run;

proc means data=Sashelp.Class mean n mean sum std min;
var age height;
run;
/*include character use class statement*/
proc means data=Sashelp.Class;
var age height;
class sex;
run;

/*grouping  use BY statement
first rule is first data should be sorted*/
proc sort data=sashelp.Class out=class1;
by sex;
run;


proc means data=class1;
var age height;
by sex;
run;

/*getting the statistics as a databaset*/

proc means data=class1;
var age height;
by sex;
output out= final_class1;
run;







/*proc mean and summary this gives the descriptive statistics*/

proc print data=Sashelp.Class;
run;

proc summary data=sashelp.class;
output out=class;
run;

proc summary data=sashelp.class;
output out=class;
var age;
run;

proc summary data=sashelp.class;
output out=class;
var age;
class sex;
run;




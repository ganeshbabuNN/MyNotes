/*proc report*/

data blood;
input subject sex$ agegp $ blood $ wbc rbc chol;
cards;
1 female child A 9.5 4.5 162
2 male adult B 6.5 5.5 172
3 female adult O 4.5 6.5 200
4 female child A 8.5 3.5 162
5 male adult B 6.5 5.5 272
6 female adult O 5.5 6.5 270
;
run;

proc print data= blood;
title "blood report";
var subject blood wbc;
run;

proc report data =blood;
title "blood report";
column subject blood wbc;
run;

/*no window*/
proc report data =blood nowindow;
title "blood report";
column subject blood wbc;
run;

/*define statement is used to add the label for the column.. .na dto define the variable blood and sex as grouping variable this means  variables this means that the result will be grouped based on each caegroy of blood and gender type.*/
/*bloodtype will be nested within gender...*/
/**/
/*by defualt detailed report for character var*/
/*summary report for numeric variable.*/

/*by default the chol do the summing*/
proc report data=blood;
title " labeling nd group blood";
column sex blood chol;
define blood /"blood type" group;
define sex /" gender" group;
define chol / "cholestrol";
run;

/*instead of sum use the mean or .... whatever*/
proc report data=blood;
title " labeling nd group blood";
column sex blood chol;
define blood /"blood type" group;
define sex /" gender" group;
define chol / "cholestrol" mean width=15;
run;

/*adjust the variable  width*/

proc report data=blood;
title " labeling nd group blood";
column sex blood chol;
define blood /"blood type" group;
define sex /" gender" group;
define chol / "cholestrol"  width=10;
run;

/*making table attractive*/

/*headline*/
proc report data=blood headline;
title " labeling nd group blood";
column sex blood chol;
define blood /"blood type" group;
define sex /" gender" group;
define chol / "cholestrol"  width=10;
run;

/*headskip*/
proc report data=blood headskip;
title " labeling nd group blood";
column sex blood chol;
define blood /"blood type" group;
define sex /" gender" group;
define chol / "cholestrol"  width=10;
run;

/*spacing*/
proc report data=blood spacing=10;
title " labeling nd group blood";
column sex blood chol;
define blood /"blood type" group;
define sex /" gender" group;
define chol / "cholestrol"  width=10;
run;


/*spacing*/
proc report data=blood spacing=10;
title " labeling nd group blood";
column sex blood chol;
define blood /"blood type" group;
define sex /" gender" group;
define chol / "cholestrol"  mean width=10;
run;

/*real scenario
display the actual value*/

proc report data=blood headline headskip spacing=2;
title " labeling nd group blood";
column sex blood chol cholgrp;
define blood /"blood type" group;
define sex /" gender" group;
define chol / display "cholestrol" width=15;
run;

/*adding the computations on that chol*/
/*compute statement*/

proc report data=blood headline headskip spacing=2;
title " labeling nd group blood";
column sex blood chol cholgrp;
define blood /"blood type" group;
define sex /" gender" group;
define chol / display "cholestrol" width=15;
define cholgrp /computeed "cholestrol result" ;
compute cholgrp/character ; 
if chol= . then cholgrp =" " ;
else if chol <=200 then cholgrp =" normal";
else if chol >200 then cholgrp=" hight";
endcomp;
run;

/*rbreak after break after*/
proc report data=blood ;
title " labeling nd group blood";
column sex blood chol;
define blood /"blood type" group;
define sex /" gender" group;
define chol / "cholestrol" ;
define chol /sum;
/*rbreak after / dol summarize;*/
rbreak after / dol dul summarize;
run;












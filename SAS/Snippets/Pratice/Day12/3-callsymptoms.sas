/*callsymput*/

data blood;
input subject sex $ agegp $ blood $ wbc rbc chol;
cards;
1 female child A 9.5 4.5 162
2 male adult B 6.5 5.5 172
3 female adult O 4.5 6.5 200
4 female child A 8.5 3.5 162
5 male adult B 6.5 5.5 272
6 female adult O 5.5 6.5 270
;
run;

proc  means data= blood ;
var rbc;
output out= means mean= M_rbc ;
run;


data abc;
set means;
call symputx("averbc" ,M_rbc);
run;

data blood1;
set blood;
per_rbc= rbc/&averbc *100;
run;


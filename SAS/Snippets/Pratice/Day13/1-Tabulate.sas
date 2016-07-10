/*tabulate*/

/*PRC -- pagewise,rowwise columwise*/

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

proc tabulate data=blood;
class sex ;
/*/if it is numeric in the var statemetn*/
table sex;
run;

proc tabulate data=blood;
class agegp sex;
table agegp sex; /* appears independently within same dimenstion */
run;

proc tabulate data =blood;
class sex agegp;
table sex,agegp; /*row, column */
run;

proc tabulate data =blood; /* page wise column */
class sex agegp blood; 
table sex,agegp,blood;
run;

proc tabulate data =blood; /* page wise column */
class sex  blood; 
table sex * blood; /*appear nested within the same dimension*/
run;

proc tabulate data =blood; /* page wise column */
class sex  blood; 
table sex all,blood all;/*provides additional column or row represnets total of column or row ,
to get a column summerie the gender and blood  */
run;


/*---numeric variable*/

proc tabulate data=blood;
var wbc rbc;
table wbc rbc;
run;

proc tabulate data=blood;
var wbc rbc;
table wbc* mean rbc*mean;
run;

proc tabulate data=blood;
var wbc rbc;
table (wbc rbc)*(mean min max);
run;

proc tabulate data=blood;
class sex agegp;
var wbc rbc chol;
table (sex agegp) (wbc rbc chol);
run;

proc tabulate data=blood;
class sex agegp;
var wbc rbc chol;
table (sex="gender" all)*(agegp all), (wbc rbc chol)* mean;
run;

proc tabulate data=blood;
class sex ;
var wbc rbc;
table sex="gender" all,wbc* mean rbc*mean;
keylabel mean="average"
all="total";
run;










/*date functions*/

/*format - it is the instruction that sas write the data properly for output purpose*/
/*informat- this to read it properly*/

/*the default date is 1 jan 1960*/

data school;
input id doj ;
informat doj ddmmyy10.; 
cards;
1 12-01-1960
2 01-01-1960
3 22-02-1999
4 08-05-2000
5 07-12-1959
;
run;

/*to read the date formatly */

proc print data=school;
run;

/*to rewrite the above code in date format using format*/

data school;
input id doj ;
/*informat doj ddmmyy10.;*/
/*informat doj ddmmyy10.;*/
/*informat doj date9.;*/
cards;
1 12-01-1960
2 01-01-1960
3 22-02-1999
4 08-05-2000
5 07-12-1959
;
run;

proc print data=school;
/*format doj date9.;*/
/*format doj date7.;*/
/*format doj ddmmyy10.;*/
/*format doj mmddyy8.;*/
/*format doj worddate20.;*/
format doj worddate12.;
run;















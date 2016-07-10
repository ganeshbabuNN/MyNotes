/*date functions*/

/*format - it is the instruction that sas write the data properly for output purpose*/
/*informat- this to read it properly*/

/*the default date is 1 jan 1960*/

data school;
input id doj ;
informat doj ddmmyy10.; 
format doj ddmmyy10.;
month_j=month(doj);
year_j=year(doj);
day_j=day(doj);
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

/*date functions*/

/*format - it is the instruction that sas write the data properly for output purpose*/
/*informat- this to read it properly*/

/*the default date is 1 jan 1960*/

data school;
input id doj doc ;
informat doj doc ddmmyy10.; 
format doj doc ddmmyy10.;
/*dur=intck("month",doj,doc);*/
/*dur=intck("year",doj,doc);*/
/*dur=intck("days",doj,doc);*/
/*dur=intck("semiyear",doj,doc);*/
/*dur=intck("tenday",doj,doc);*/
dur=intck("week",doj,doc);
cards;
1 12-01-1960 19-05-1970
2 01-01-1960 18-04-1962
3 22-02-1999 09-05-2000
4 08-05-2000 08-12-1998
5 07-12-1959 12-09-1961
;
run;

/*to read the date formatly */

proc print data=school;
format doj doc ddmmyy10.;
run;

/*weekday*/
data school;
input id doj ;
informat doj ddmmyy10.; 
format doj ddmmyy10.;
dur=weekday(doj);
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
format doj  ddmmyy10.;
run;

/*interval next*/
data school;
input id doj ;
informat doj ddmmyy10.; 
format doj ddmmyy10.;
/*doc=intnx("day",doj,12);*/
/*doc=intnx("month",doj,12);*/
doc=intnx("year",doj,12);
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
format doj doc ddmmyy10.;
run;

data data1;
weeks= intck('week','30may2011'd,'15dec2014'd);
run;

proc print data=data1;
run;

data abc;
d=day();
run;

proc print data=abc;
format d mmddyy10.;
run;


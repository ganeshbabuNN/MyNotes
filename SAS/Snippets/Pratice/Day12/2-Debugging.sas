/*two types of macor
*1-Macro %
2-macro variable

way to create the macro
%macro
%let statement
partmeter
callsinput&callsinputx
intoclose for SQL only*/

/*macro*/

data hospital;
input id height weight sex $ time;
datalines;
2 120 56 M 1
3 134 45 F 4
4 166 63 M 3
5 160 60 M 3
6 145 38 F 3
7 173 69 M 1
run
;


data abc;
set models;
put _all_;
run;

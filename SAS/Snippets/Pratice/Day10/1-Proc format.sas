/*userdefined format
two type of value(character value) and picture format(numeric value).*/


data hospital;
input name $age height sex $;
cards;
a 13 155 f
b 33 145 m
;
run;

/*value format*/
proc format;
value $sexfmt
"m" = " male"
"f" ="female"
;
run;

proc print data =hospital;
/*wherever you end the format end with .*/
format sex $sexfmt.;
run;

/*picture format*/
proc format;
picture heightfmt
low-high='000cm';
run;

proc print data=hospital;
format height heightfmt.;
run;

proc format;
value agefmt
low-25 ='child'
25-high ='old'
;
run;

proc print data=hospital;
format age agefmt.;
run;







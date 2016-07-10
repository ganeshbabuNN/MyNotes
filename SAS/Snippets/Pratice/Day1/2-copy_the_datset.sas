data lab;
input sub_id sex $ hb;
cards;
100 f 11
101 m 12
102 f 11
103 m 12
104 f 11
105 m 12
106 f 11
107 m 12
108 f 11
109 m 12
;
run;
proc print data=lab;
run;

/*SET IS USED TO COPY THE DATA FROM LAB*/

DATA lab1;
SET lab(firstobs=1 obs=4);
RUN;
PROC PRINT DATA=LAB1;
RUN;

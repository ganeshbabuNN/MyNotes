data test;
/*single trailing*/
input name $ age @;
if age > 25 then delete;
else input gender$
cards;
anu 32 f
ami 42 m
sami 35 f
;
run;

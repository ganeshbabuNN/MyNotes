%let path=/projstat/u99/general/current/stats/program/draft/zme;
libname learn "&path";

data dm;
do i=1 to 10;
dum=ranuni(1);
subjid=1000+i;
if dum<=0.5 then gndr = "M"; else gndr= "F";
if mod(int(dum*1000),2)=1 then trt = "A"; else trt= "B";
age=int(18+dum*50);
ht_cm=int(120+dum*20);
wt_kg=int(50+dum*20);
output;
end;
run;

data vs;
	do i=1 to 10;
		subjid=1000+i;
		do j=1 to 3;
			dum=ranuni(1);
			if j=1 then	do;	param="SBP";	val = int(100+dum*50);	end;
			if j=2 then do;	param="DBP";	val = int(60+dum*10);	end;
     		if j=3 then do;	param="RR";		val = int(8+dum*10);	end;
output;
end;
end;
run;
data learn.dm(drop= i  dum); set dm; run;
data learn.vs(drop= i j dum); set vs; run;


*#Data is ready, now let us do some operations;
proc sort data=learn.dm out=sortage;
by age;
run;
proc sort data=learn.dm out=sortage;
by descending age;
run;
data onlymale;
set learn.dm;
if gndr = "M";
run;


data agelt35TrtA;
set learn.dm;
if age < 35 and trt = "A";
run;

data dmnewvar;
set learn.dm;
bmi= wt_kg/  (ht_cm/100)**2;
if  age le 35 then agegrp =           "  <35";
else if 35 le age le 50 then agegrp = "35-50";
else if  age gt 50 then agegrp =      ">50  ";
run;

*vs data sort by subjid and descending parameter;
proc sort data=learn.vs out=vssort;
by subjid descending param ;
run;
*transpose vs such that params are in col names;
proc transpose data=learn.vs out=vstrans;
by subjid;
id param;
var val;
run;

*merge by dm and vs;
data dmvstrans;
merge learn.dm vstrans;
by subjid;
run;
proc means data= dmvstrans;
var sbp dbp rr;
run;
proc means data= dmvstrans;
class trt;
var sbp dbp rr;
run;

proc means data= dmvstrans;
class trt gndr;
var sbp dbp rr;
run;

proc sgplot data=dmvstrans;
scatter x=sbp y=age/group=trt;
run;
quit;

proc sgplot data=dmvstrans;
  vbox age / category= trt ;
run;







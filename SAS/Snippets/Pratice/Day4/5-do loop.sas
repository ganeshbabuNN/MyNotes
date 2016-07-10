/*do loop*/
data a;
do i =1 to 5;
y=i*2;
output;
end;
run;
data b;
do i=1 to 5;
 y=i**2;
output;
end;
run;

data c;
do i =1 to 5 by 0.5;
y = i **2;
output;
end;
run


data hosiptal;
input age;
datalines;
34
13
13
22
12
43
13
56
75
34
23
12
65
23
65
32
65
23
64
;
run;

data patient;
set hosiptal;
if age < 18 then do;
group='child';
minor='yes';
end;
else do;
group ='adult';
minor='no';
end;
run;

/*do until*/

data even;
k=0;
even=0;
do until(even >= 70);
even=2 * k;
output;
k=k+1;
end;
run;

/*do until*/

data even;
k=0;
even=0;
do until(even < 70);
even=2 * k;
output;
k=k+1;
end;
run;

/*do while*/
data even;
k=0;
even=0;
do while(even <= 70);
even=2 * k;
output;
k=k+1;
end;
run;

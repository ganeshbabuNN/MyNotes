select ename from emp2 connect by prior ename = mname  start with mname = �sunil�;
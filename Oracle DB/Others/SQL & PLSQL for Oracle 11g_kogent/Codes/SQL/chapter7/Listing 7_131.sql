DELETE FROM DEPOSIT WHERE CNAME IN (�ANIL�, �SUNIL�) AND EXISTS
(SELECT * FROM CUSTOMER C1, CUSTOMER C2 WHERE C1.CNAME = �ANIL� AND C2.CNAME = 	�SUNIL� AND C1.CITY = C2.CITY);
SELECT E1.FNAME
FROM ENQUIRY E1
WHERE NOT EXISTS
((SELECT B1.COURSECODE
FROM BATCH B1,ENROLLMENT EN1,ENQUIRY E2
WHERE B1.BATCHCODE = EN1.BATCHCODE
AND EN1.ENQUIRYNO = E2.ENQUIRYNO
AND E2.FNAME = �ANIL�)
MINUS
(SELECT B2.COURSECODE
FROM BATCH B2,ENROLLMENT EN2
WHERE B2.BATCHCODE = EN2.BATCHCODE
AND EN2.ENQUIRYNO = E1.ENQUIRYNO));
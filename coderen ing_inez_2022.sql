UPDATE boekjaar_2023.ing_inez_2023
set code = 901
WHERE UPPER("Mededelingen") LIKE '%KRUISPOST%'
   OR UPPER("Mededelingen") LIKE '%BINCKBANK%'
   OR UPPER("Mededelingen") LIKE '%VOORSCHOT%';


UPDATE boekjaar_2023.ing_inez_2023
set code = 624
WHERE UPPER("Mededelingen") LIKE '%FELINE%';

UPDATE boekjaar_2023.ing_inez_2023
set code = 625
WHERE UPPER("Mededelingen") LIKE '%F.C.P.%';

UPDATE boekjaar_2023.ing_inez_2023
set code = 192
WHERE UPPER("Mededelingen") LIKE '%VATTENFALL%';


UPDATE boekjaar_2023.ing_inez_2023
set code = 750
WHERE UPPER("Mededelingen") LIKE '%ING BANK%';


UPDATE boekjaar_2023.ing_inez_2023
set code = 601
WHERE UPPER("Mededelingen") LIKE '%SVB%';


UPDATE boekjaar_2023.ing_inez_2023
set code = 701
WHERE UPPER("Mededelingen") LIKE '%TRANSACTIE%';


UPDATE boekjaar_2023.ing_inez_2023
set code = 163
WHERE UPPER("Mededelingen") LIKE '%IAPMA%';


UPDATE boekjaar_2023.ing_inez_2023
set code = 163
WHERE UPPER("Mededelingen") LIKE '%SBK%';


UPDATE boekjaar_2023.ing_inez_2023
set code = 191
WHERE UPPER("Mededelingen") LIKE '%KUHL%';

SELECT sum("Bedrag (EUR)"), code
FROM boekjaar_2023.ing_inez_2023
GROUP BY code
ORDER BY code;



SELECT SUM("Bedrag (EUR)"), code, "omschrijving"
FROM boekjaar_2023.ing_inez_2023
         inner join boekjaar_2023.codes_2023 on code = "rekeningnummer"
GROUP BY code, "omschrijving"
ORDER BY code;




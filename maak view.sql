--MAAK EEN VIEW

create or replace view dubbeltje as
SELECT SUM(bedrag), code, omschrijving, groepsnummer, groepsomschijving, trefwoord
FROM grootboek_2023
         inner join codes_2023 on code = "rekeningnummer"
         inner join groepen_2023
                    on groepsnummer = codes_2023.groep
GROUP BY code, codes_2023."omschrijving", groepsnummer, groepsomschijving, trefwoord
ORDER BY code;

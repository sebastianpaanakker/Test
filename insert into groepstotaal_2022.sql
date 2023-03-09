--insert into groepstotaal

truncate boekhouding_sebas.boekjaar_2023.groepstotaal_2023;

INSERT INTO boekhouding_sebas.boekjaar_2023.groepstotaal_2023
SELECT SUM(bedrag), code, omschrijving, groepsnummer, groepsomschijving, trefwoord
FROM boekhouding_sebas.boekjaar_2023.grootboek_2023
         inner join boekhouding_sebas.boekjaar_2023.codes_2023 on code = "rekeningnummer"
         inner join boekhouding_sebas.boekjaar_2023.groepen_2023 on groepsnummer = boekhouding_sebas.boekjaar_2023.codes_2023.groep
GROUP BY code, boekhouding_sebas.boekjaar_2023.codes_2023."omschrijving", groepsnummer, groepsomschijving, trefwoord
ORDER BY code;


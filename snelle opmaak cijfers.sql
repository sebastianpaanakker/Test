



-- inlezen naar: boekhouding_sebas.boekjaar_2023.grootboek_2023


truncate table boekhouding_sebas.boekjaar_2023.grootboek_2023;

INSERT INTO boekhouding_sebas.boekjaar_2023.grootboek_2023 (reknummer, datum, bedrag, grbk_omschrijving,code)
SELECT "Rekeningnummer",
       "Transactiedatum",
       "Transactiebedrag",
       "Omschrijving",
        abnamro_2023."code"
FROM boekhouding_sebas.boekjaar_2023.abnamro_2023
         INNER JOIN boekhouding_sebas.boekjaar_2023.codes_2023 ON boekhouding_sebas.boekjaar_2023.abnamro_2023.code =
                                                                  boekhouding_sebas.boekjaar_2023.codes_2023.rekeningnummer
ORDER BY code;







INSERT INTO boekjaar_2023.grootboek_2023(reknummer, datum, bedrag, code, "group", grbk_omschrijving)
SELECT "Rekening", "Datum", "Bedrag (EUR)", code, boekjaar_2023.ing_inez_2023.code, "Mededelingen"
FROM boekjaar_2023.ing_inez_2023
         INNER JOIN boekjaar_2023.codes_2023
                    ON boekjaar_2023.ing_inez_2023.code = boekjaar_2023.codes_2023.rekeningnummer
ORDER BY code;


INSERT INTO boekjaar_2023.grootboek_2023(reknummer, datum, bedrag, code, "group", grbk_omschrijving)
SELECT "Rekening", "Datum", "Bedrag (EUR)", code, boekjaar_2023.ing_sebas_2023.code, "Mededelingen"
FROM boekjaar_2023.ing_sebas_2023
         INNER JOIN boekjaar_2023.codes_2023
                    ON boekjaar_2023.ing_sebas_2023.code = boekjaar_2023.codes_2023.rekeningnummer
ORDER BY code;



INSERT INTO boekjaar_2023.grootboek_2023(reknummer, datum, bedrag, code, "group", grbk_omschrijving)
SELECT rekening, datum, bedrag, code, boekjaar_2023.visa_2023.code, "visa_omschrijving"
FROM boekjaar_2023.visa_2023
         INNER JOIN boekjaar_2023.codes_2023 ON boekjaar_2023.visa_2023.code = boekjaar_2023.codes_2023.rekeningnummer
ORDER BY code;


INSERT INTO boekjaar_2023.grootboek_2023(reknummer, datum, bedrag, code, "group", grbk_omschrijving)
SELECT rekening, datum, bedrag, code, boekjaar_2023.rabo_2023.code, rabo_omschijving
FROM boekjaar_2023.rabo_2023
         INNER JOIN boekjaar_2023.codes_2023 ON boekjaar_2023.rabo_2023.code = boekjaar_2023.codes_2023.rekeningnummer
ORDER BY code;



INSERT INTO boekjaar_2023.grootboek_2023(reknummer, datum, bedrag, code, "group", grbk_omschrijving)
SELECT rekening, datum, bedrag, code, boekjaar_2023.sns_2023.code, sns_omschrijving
FROM boekjaar_2023.sns_2023
         INNER JOIN boekjaar_2023.codes_2023 ON boekjaar_2023.sns_2023.code = boekjaar_2023.codes_2023.rekeningnummer
ORDER BY code;

INSERT INTO boekjaar_2023.grootboek_2023(reknummer, datum, bedrag, code, grbk_omschrijving)
SELECT "Auftragskonto", "Buchungstag", "Betrag", "code", "Beguenstigter/Zahlungspflichtiger"
FROM boekjaar_2023.berliner_2023
         INNER JOIN boekjaar_2023.codes_2023
                    ON boekjaar_2023.berliner_2023.code = boekjaar_2023.codes_2023.rekeningnummer
ORDER BY code;




--insert into groepstotaal

truncate boekhouding_sebas.boekjaar_2023.groepstotaal_2023;

INSERT INTO boekhouding_sebas.boekjaar_2023.groepstotaal_2023
SELECT SUM(bedrag), code, omschrijving, groepsnummer, groepsomschijving, trefwoord
FROM boekhouding_sebas.boekjaar_2023.grootboek_2023
         inner join boekhouding_sebas.boekjaar_2023.codes_2023 on code = "rekeningnummer"
         inner join boekhouding_sebas.boekjaar_2023.groepen_2023
                    on groepsnummer = boekhouding_sebas.boekjaar_2023.codes_2023.groep
GROUP BY code, boekhouding_sebas.boekjaar_2023.codes_2023."omschrijving", groepsnummer, groepsomschijving, trefwoord
ORDER BY code;

select *
from boekjaar_2023.groepstotaal_2023;

--GROEPSTOTALEN_2023
select sum(totaalbedrag), groepsnummer, groepsomschrijving
from boekhouding_sebas.boekjaar_2023.groepstotaal_2023
group by groepsnummer, groepsnummer, groepsomschrijving
order by groepsnummer;

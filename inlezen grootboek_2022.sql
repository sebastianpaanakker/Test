-- inlezen naar postgres."2022".grootboek_2023


truncate table  boekhouding_sebas.boekjaar_2023.grootboek_2023;

INSERT INTO boekhouding_sebas.boekjaar_2023.grootboek_2023 (reknummer, datum, bedrag, code,"group", "grbk_omschrijving")
SELECT  "Rekeningnummer", "Transactiedatum", "Transactiebedrag","code", boekhouding_sebas.boekjaar_2023.abnamro_2023.groep,"Omschrijving"
FROM boekhouding_sebas.boekjaar_2023.abnamro_2023
         INNER JOIN boekhouding_sebas.boekjaar_2023.codes_2023 ON boekhouding_sebas.boekjaar_2023.abnamro_2023.code = boekhouding_sebas.boekjaar_2023.codes_2023.rekeningnummer
ORDER BY code;


INSERT INTO boekjaar_2023.grootboek_2023(reknummer, datum, bedrag, code, "group", grbk_omschrijving)
SELECT "Rekening","Datum","Bedrag (EUR)",code,boekjaar_2023.ing_inez_2023.code,"Mededelingen"
    FROM boekjaar_2023.ing_inez_2023
        INNER JOIN boekjaar_2023.codes_2023 ON boekjaar_2023.ing_inez_2023.code = boekjaar_2023.codes_2023.rekeningnummer
ORDER BY code;



INSERT INTO boekjaar_2023.grootboek_2023(reknummer, datum, bedrag, code, "group", grbk_omschrijving)
SELECT "Rekening","Datum","Bedrag (EUR)",code,boekjaar_2023.ing_sebas_2023.code,"Mededelingen"
    FROM boekjaar_2023.ing_sebas_2023
        INNER JOIN boekjaar_2023.codes_2023 ON boekjaar_2023.ing_sebas_2023.code = boekjaar_2023.codes_2023.rekeningnummer
ORDER BY code;






/*



INSERT INTO postgres."2022".grootboek_2023 (reknummer, datum, bedrag, code, "group",grbk_omschrijving)
SELECT "Auftragskonto", "Buchungstag", "Betrag", code,"Berliner_2021".groep , "Beguenstigter/Zahlungspflichtiger"
FROM "Berliner_2021"
         INNER JOIN codes2 ON code = codes2.rekeningnummer
ORDER BY code;


INSERT INTO postgres."2022".grootboek_2023 (reknummer, datum, bedrag, code, "group",grbk_omschrijving)
SELECT rekening, datum, bedrag, code,"BinckBank".groep,binck_omschrijving
FROM "BinckBank"
         INNER JOIN codes2 ON code = codes2.rekeningnummer
ORDER BY code;


INSERT INTO postgres."2022".grootboek_2023 (reknummer, datum, bedrag, code, "group",grbk_omschrijving)
SELECT rekening, datum, bedrag, code,rabo_2021.groep,omschrijving
FROM "rabo_2021"
         INNER JOIN codes2 ON code = codes2.rekeningnummer
ORDER BY code;


INSERT INTO postgres."2022".grootboek_2023 (reknummer, datum, bedrag, code, "group",grbk_omschrijving)
SELECT rekening, datum, bedrag, code,sns_2021.groep,omschrijving
FROM "sns_2021"
         INNER JOIN codes2 ON code = codes2.rekeningnummer
ORDER BY code;


INSERT INTO postgres."2022".grootboek_2023 (reknummer, datum, bedrag, code, "group",grbk_omschrijving)
SELECT rekening, datum, bedrag, code,visa_2021.groep,omschrijving
FROM "visa_2021"
         INNER JOIN codes2 ON code = codes2.rekeningnummer
ORDER BY code;




select bedrag , sum(postgres."2022".grootboek_2023.bedrag)
from postgres."2022".grootboek_2023
 inner join codes2 on code= codes2.rekeningnummer
where postgres."2022".grootboek_2023."group" = 18
group by postgres."2022".grootboek_2023.code, omschrijving, bedrag
order by postgres."2022".grootboek_2023.code;
*/

--insert into grootboek_2023
INSERT INTO boekhouding_sebas.boekjaar_2023.grootboek_2023 (reknummer, datum, bedrag, code,"group", "grbk_omschrijving")
SELECT  "Rekeningnummer", "Transactiedatum", "Transactiebedrag","code", boekhouding_sebas.boekjaar_2023.abnamro_2023.groep,"Omschrijving"
FROM boekhouding_sebas.boekjaar_2023.abnamro_2023
         INNER JOIN boekhouding_sebas.boekjaar_2023.codes_2023 ON boekhouding_sebas.boekjaar_2023.abnamro_2023.code = boekhouding_sebas.boekjaar_2023.codes_2023.rekeningnummer
ORDER BY code;

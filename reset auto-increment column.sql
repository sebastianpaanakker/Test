--reset auto-increment column

ALTER SEQUENCE grootboek_2023_grootboek_id_seq RESTART WITH 1;

--werkt niet in een gevulde table
select * from boekjaar_2023.grootboek_2023;

--dit werkt wel maar inhoud table verdwenen!!
truncate boekjaar_2023.grootboek_2023 restart identity ;

--dan maar weer vullen
INSERT INTO boekhouding_sebas.boekjaar_2023.grootboek_2023 (reknummer, datum, bedrag, code,"group", "grbk_omschrijving")
SELECT  "Rekeningnummer", "Transactiedatum", "Transactiebedrag","code", boekhouding_sebas.boekjaar_2023.abnamro_2023.groep,"Omschrijving"
FROM boekhouding_sebas.boekjaar_2023.abnamro_2023
         INNER JOIN boekhouding_sebas.boekjaar_2023.codes_2023 ON boekhouding_sebas.boekjaar_2023.abnamro_2023.code = boekhouding_sebas.boekjaar_2023.codes_2023.rekeningnummer
ORDER BY code;

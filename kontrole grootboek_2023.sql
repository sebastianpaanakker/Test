--SELECT SUM(bedrag), code, omschrijving, groepsnummer, groepsomschijving, trefwoord
select sum(bedrag) ,code,codes_2023.omschrijving,groepsnummer,groepsomschijving,trefwoord
FROM boekhouding_sebas.boekjaar_2023.grootboek_2023
         inner join boekhouding_sebas.boekjaar_2023.codes_2023 on code = "rekeningnummer"
         inner join boekhouding_sebas.boekjaar_2023.groepen_2023
                    on groepsnummer = boekhouding_sebas.boekjaar_2023.codes_2023.groep
GROUP BY code, boekhouding_sebas.boekjaar_2023.codes_2023."omschrijving", groepsnummer, groepsomschijving, trefwoord
ORDER BY code;

select *
from boekhouding_sebas.boekjaar_2023.grootboek_2023
         order by code,grbk_omschrijving;

select code, bedrag, grbk_omschrijving
from boekhouding_sebas.boekjaar_2023.grootboek_2023
group by code, bedrag, grbk_omschrijving
order by code;

SELECT boekhouding_sebas.boekjaar_2023.grootboek_2023.code, sum(bedrag), boekhouding_sebas.boekjaar_2023.codes_2023.omschrijving AS GroepRekening
--INTO resultaat_2
FROM boekhouding_sebas.boekjaar_2023.grootboek_2023
INNER JOIN boekhouding_sebas.boekjaar_2023.codes_2023  on grootboek_2023.code = codes_2023.rekeningnummer
  --      ON grootboek_2023.code = codes_2023.rekeningnummer
GROUP BY grootboek_2023.code,codes_2023.omschrijving
ORDER BY grootboek_2023.Code;

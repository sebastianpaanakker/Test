--ing minteken
UPDATE boekhouding_sebas.boekjaar_2023.ing_inez_2023
set "Bedrag (EUR)" = -"Bedrag (EUR)"
where "Af Bij" = 'Af';

update boekhouding_sebas.boekjaar_2023.ing_sebas_2023
set "Bedrag (EUR)"=-"Bedrag (EUR)"
where "Af Bij"='Af';


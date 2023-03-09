-- join

select bedrag, sum(grootboek_2023.bedrag)
from grootboek_2023
         inner join codes_2023 on code = codes_2023.rekeningnummer
where grootboek_2023.code = 730
group by grootboek_2023.code, omschrijving, bedrag
order by grootboek_2023.code;



--tables in specifiek schema
select * from information_schema.tables where table_schema='boekjaar_2023';
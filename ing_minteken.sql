 select sum(bedrag),bedrag,code,grbk_omschrijving
     from grootboek_2023
group by bedrag,code,grbk_omschrijving
order by code,grbk_omschrijving;


select bedrag,code,grbk_omschrijving,
       sum(bedrag) as totaal
    from grootboek_2023
where code = 201
group by bedrag,code,grbk_omschrijving
order by code,grbk_omschrijving;


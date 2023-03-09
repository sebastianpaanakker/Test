--werkbank voor aanmaken functions

create or replace function totalrecords() returns integer
    language plpgsql
as
$$
declare
	total integer;
BEGIN
   SELECT count(*) into total FROM grootboek_2023;
   RETURN total;
END;
$$;

alter function totalrecords() owner to postgres;


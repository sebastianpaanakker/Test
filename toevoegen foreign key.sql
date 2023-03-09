--toevoegen foreign keys

alter table boekjaar_2023.grootboek_2023 add constraint grootboek_code_fkey foreign key (codes_2023_id)
    references boekjaar_2023.codes_2023 (codes_2023_id);

alter table boekjaar_2023.grootboek_2023 add constraint grootboek_groepen_fkey foreign key (groepen_2023_id)
    references boekjaar_2023.groepen_2023(groepen_2023_id);



alter table boekjaar_2023.bnkreknr_2023 add constraint bnknaw_fkey foreign key ("bnkID")
    references boekjaar_2023.bnknaw_2023 ("bnkID") ;

alter table boekjaar_2023.bnkreknr_2023 add constraint bnkreknr_gebr_fkey foreign key ("bnkrekgebr_ID")
    references boekjaar_2023.bnkrekgebr_2023 ("bnkrekgebr_ID");


CREATE TABLE boekjaar_2023.Berliner_2023
(
    "Auftragskonto"                     text,
    "Buchungstag"                       text,
    "Valutadatum"                       text,
    "Buchungstext"                      text,
    "Verwendungszweck"                  text,
    "Glaeubiger ID"                     text,
    "Mandatsreferenz"                   text,
    "Kundenreferenz (End-to-End)"       text,
    "Sammlerreferenz"                   text,
    "Lastschrift Ursprungsbetrag"       text,
    "Auslagenersatz Ruecklastschrift"   text,
    "Beguenstigter/Zahlungspflichtiger" text,
    "Kontonummer/IBAN"                  text,
    "BIC (SWIFT-Code)"                  text,
    "Betrag"                            numeric(10, 2),
    "Waehrung"                          text,
    "Info"                              text,
    code                                integer );


CREATE TABLE boekjaar_2023.ing_inez_2023 (
    "Datum" text,
    "Naam / Omschrijving" text,
    "Rekening" text,
    "Tegenrekening" text,
    "Code" text,
    "Af Bij" text,
    "Bedrag (EUR)" numeric(10,2),
    "Mutatiesoort" text,
    "Mededelingen" text,
    "Saldo na mutatie" numeric(10,2),
    code integer
);

CREATE TABLE boekjaar_2023.ing_sebas_2023 (
    "Datum" text,
    "Naam / Omschrijving" text,
    "Rekening" text,
    "Tegenrekening" text,
    "Code" text,
    "Af Bij" text,
    "Bedrag (EUR)" numeric(10,2),
    "Mutatiesoort" text,
    "Mededelingen" text,
    "Saldo na mutatie" numeric(10,2),
    code integer
);


CREATE TABLE boekjaar_2023.abnamro_2023 (
    "Rekeningnummer" integer,
    "Muntsoort" text,
    "Transactiedatum" integer,
    "Rentedatum" integer,
    "Beginsaldo" numeric,
    "Eindsaldo" numeric,
    "Transactiebedrag" numeric,
    "Omschrijving" text,
    code integer,
    groep integer
);



CREATE TABLE boekjaar_2023.codes_2023 (
    rekeningnummer numeric(255,0),
    omschrijving character varying(255),
    btw numeric(255,2),
    groep numeric(255,0),
    id numeric(255,0),
    trefwoord character varying(255)
);



CREATE TABLE boekjaar_2023.grootboek_2023 (
    reknummer text,
    datum text,
    bedrag numeric(10,2),
    code integer,
    "group" integer,
    debet numeric(10,2),
    credit numeric(10,2),
    grbk_omschrijving text
);

CREATE TABLE boekjaar_2023.bnkreknr_2023 (
    "bnkreknrID" integer,
    bnkreknr text,
    bnkrek_omschrijving text,
    "Bank_naw" integer,
    bnkrekgebruiker integer,
    bnkrekbeginsaldo numeric(10,2),
    bnkrekeindsaldo numeric(10,2),
    beginsaldodatum date,
    eindsaldodatum date
);

CREATE TABLE boekjaar_2023.bnkrekgebr_2023 (
    "bnkrekgebr_ID" integer,
    bnkrekgebr_naam text
);


CREATE TABLE boekjaar_2023.bnknaw_2023 (
    "bnkID" integer,
    bnknaam text,
    bnkadres text,
    bnkcontact text,
    telnr text
);

CREATE TABLE boekjaar_2023.visa_2023 (
    rekening text,
    datum text,
    bedrag numeric(10,2),
    code integer,
    visa_omschrijving text
);


CREATE TABLE boekjaar_2023.sns_2023 (
    rekening text,
    datum text,
    bedrag numeric(10,2),
    code integer,
    sns_omschrijving integer
);



CREATE TABLE boekjaar_2023.rabo_2023 (
    rekening text,
    datum text,
    bedrag numeric(10,2),
    code integer,
    rabo_omschijving integer
);

CREATE TABLE boekjaar_2023.groepstotaal_2023 (
    totaalbedrag numeric(10,2),
    code integer,
    omschrijving text,
    groepsnummer integer,
    groepsomschrijving text,
    trefwoord text
);

CREATE TABLE boekjaar_2023.groepen_2023 (
    groepsomschijving text,
    groepsnummer integer,
    groepsbedrag numeric(10,2)
);








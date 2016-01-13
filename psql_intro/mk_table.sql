

CREATE TABLE photomp (                     -- Create new table for inspection

 SEQUENCE   double precision PRIMARY KEY,  --   sequence
 SPSPEC1                     varchar(80),  --   object name
 RA1                         varchar(80),  --   right ascension in hh:mm:ss.ss
 DEC1                        varchar(80),  --   declination in dd:mm:ss
 RA2                    double precision,  --   right ascension in deg
 DEC2                   double precision,  --   declination in deg
 longi                  double precision,  --   galactic longitude
 lati                   double precision,  --   galactic latitude
 EBVA                   double precision,  --   reddening
 BMAG                   double precision,  --   B magnitude
 VMAG                   double precision,  --   V magnitude
 JMAG                   double precision,  --   J magnitude
 KMAG                   double precision   --   K magnitude

);

COPY photomp FROM '/emc1/home/vplacco/psql/dbtest.csv' DELIMITERS ',' CSV;

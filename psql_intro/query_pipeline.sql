\echo ''

\pset format 'unaligned'
\pset null "-9.999"
\pset fieldsep '\t'
\pset footer
\pset tuples_only
\pset title

\echo ''

\o /emc1/home/vplacco/PHYS70210/psql_intro/table1.dat

SELECT spspec1,feh_biw,teff_adop,logg_adop,cfe,j0,ra,dec
FROM pipeline 
WHERE color='JK' AND teff_adop<7000;

\o
	
\pset footer
\pset tuples_only
\r
\echo ''
